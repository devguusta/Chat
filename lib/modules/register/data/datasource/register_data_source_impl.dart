import 'package:chat_app/modules/register/data/models/register_model.dart';
import 'package:chat_app/modules/register/domain/entities/user_register.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../infra/datasources/register_data_source.dart';

class RegisterDataSourceImpl implements RegisterDataSource {
  final FirebaseAuth auth;
  final FirebaseFirestore dataBase;

  RegisterDataSourceImpl(this.auth, this.dataBase);
  @override
  Future<bool> registerUser(UserRegister userRegister) async {
    try {
      User? user;
      var result = await auth.createUserWithEmailAndPassword(
          email: userRegister.email, password: userRegister.password);
      user = result.user;
      if (user != null) {
        RegisterModel registerModel = RegisterModel(
            email: userRegister.email,
            name: userRegister.name,
            phone: userRegister.phone,
            uid: user.uid);
        await dataBase
            .collection('users')
            .doc(user.uid)
            .set(registerModel.toMap());
        return true;
      }
      return false;
    } catch (e) {
      rethrow;
    }
  }
}
