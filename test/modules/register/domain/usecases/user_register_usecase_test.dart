import 'package:chat_app/modules/register/domain/entities/user_register.dart';
import 'package:chat_app/modules/register/domain/errors/register_errors.dart';
import 'package:chat_app/modules/register/domain/repositories/register_repository.dart';
import 'package:chat_app/modules/register/domain/usecases/user_register_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'user_register_usecase_test.mocks.dart';

@GenerateMocks([RegisterRepository])
void main() {
  late RegisterUseCase useCase;
  late UserRegister userEntityError;
  late UserRegister userEntity;

  setUp(() {
    useCase = RegisterUseCase(MockRegisterRepository());
    userEntityError = UserRegister(
        name: "teste",
        email: "teste@gmail.com",
        phone: "",
        password: "password",
        confirmPassword: "confirmPassword");
    userEntity = UserRegister(
        name: "teste",
        email: "teste@gmail.com",
        phone: "(00)22222-2222",
        password: "password",
        confirmPassword: "confirmPassword");
  });
  group("Tester user register use case", () {
    test("Should return a invalid params when register entity is invalid",
        () async {
      when(useCase.registerRepository.register(userEntityError)).thenAnswer(
          (_) async => Left(InvalidParams(
              errorMessage: "phone is required", exception: "invalid phone")));
      final result = await useCase.call(userEntityError);
      result.fold((l) => expect(l, isInstanceOf<InvalidParams>()), (r) => null);
    });
  });
  test("Should return bool when register use case return success", () async {
    when(useCase.registerRepository.register(userEntity))
        .thenAnswer((_) async => const Right(true));
    final result = await useCase.call(userEntity);
    result.fold((l) => null, (r) => expect(r, true));
  });
}
