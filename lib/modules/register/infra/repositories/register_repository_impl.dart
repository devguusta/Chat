import 'package:chat_app/core/error/failure.dart';
import 'package:chat_app/modules/register/domain/entities/user_register.dart';
import 'package:chat_app/modules/register/domain/errors/register_errors.dart';
import 'package:chat_app/modules/register/domain/repositories/register_repository.dart';
import 'package:dartz/dartz.dart';

import '../datasources/register_data_source.dart';

class RegisterRepositoryImpl implements RegisterRepository {
  final RegisterDataSource dataSource;

  RegisterRepositoryImpl(this.dataSource);
  @override
  Future<Either<Failure, bool>> register(UserRegister register) async {
    try {
      var result = await dataSource.registerUser(register);
      if (!result) {
        return Left(UserExist(
            errorMessage: "User already exist",
            exception: 'user already exist'));
      }
      return const Right(true);
    } on Failure catch (e) {
      return Left(e);
    } catch (e) {
      return Left(UnknownError(
          errorMessage: "Ocorreu um erro no servidor",
          exception: e.runtimeType));
    }
  }
}
