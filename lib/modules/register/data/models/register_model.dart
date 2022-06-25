import 'dart:convert';

class RegisterModel {
  final String email;
  final String name;
  final String phone;
  final String uid;

  RegisterModel(
      {required this.email,
      required this.name,
      required this.phone,
      required this.uid});

  Map<String, dynamic> toMap() {
    return {'email': email, 'name': name, 'phone': phone, 'uid': uid};
  }

  factory RegisterModel.fromMap(Map<String, dynamic> map) {
    return RegisterModel(
        email: map['email'],
        name: map['name'],
        phone: map['phone'],
        uid: map['uid']);
  }
  String toJson() => json.encode(toMap());

  factory RegisterModel.fromJson(String source) =>
      RegisterModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RegisterModel(email: $email, name: $name, phone: $phone,)';
  }

  RegisterModel copyWith({
    String? email,
    String? name,
    String? phone,
    String? cpf,
    String? uid,
  }) {
    return RegisterModel(
      email: email ?? this.email,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      uid: uid ?? this.uid,
    );
  }
}
