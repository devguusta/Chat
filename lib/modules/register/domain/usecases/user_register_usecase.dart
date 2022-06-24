import 'package:chat_app/core/usecases/usecase.dart';
import 'package:chat_app/modules/register/domain/entities/user_register.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../repositories/register_repository.dart';

class RegisterUseCase implements UseCase<bool, UserRegister> {
  final RegisterRepository registerRepository;

  RegisterUseCase(this.registerRepository);
  @override
  Future<Either<Failure, bool>> call(UserRegister params) async {
    return await registerRepository.register(params);
  }
}
