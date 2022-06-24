import 'package:chat_app/modules/register/domain/entities/user_register.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late UserRegister userRegister;
  test("Tester user register entity receive a new object", () {
    UserRegister userEntity = UserRegister(
        name: "teste",
        email: "teste@gmail.com",
        phone: "(00)20000-0000",
        password: "password",
        confirmPassword: "confirmPassword");
    userRegister = userEntity;
    expect(userRegister, isInstanceOf<UserRegister>());
    expect(userRegister, userEntity);
  });
}
