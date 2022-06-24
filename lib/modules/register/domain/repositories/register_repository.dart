import 'package:chat_app/core/error/failure.dart';
import 'package:chat_app/modules/register/domain/entities/user_register.dart';
import 'package:dartz/dartz.dart';

abstract class RegisterRepository {
  Future<Either<Failure, bool>> register(UserRegister register);
}
