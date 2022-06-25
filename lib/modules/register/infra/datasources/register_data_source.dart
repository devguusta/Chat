import 'package:chat_app/modules/register/domain/entities/user_register.dart';

abstract class RegisterDataSource {
  Future<bool> registerUser(UserRegister userRegister);
}
