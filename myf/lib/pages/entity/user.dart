import 'package:flutter/foundation.dart';

class UserReuestEntity {
  final String email;
  final String password;

  UserReuestEntity({
    @required this.email,
    @required this.password,
  });

  factory UserReuestEntity.fromJson(Map<String, dynamic> json) =>
      UserReuestEntity(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
      };
}
