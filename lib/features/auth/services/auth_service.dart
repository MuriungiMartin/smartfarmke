// ignore_for_file: empty_catches

import 'package:flutter/cupertino.dart';
import 'package:smartfarmke/models/user.dart';

class AuthService {
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
          id: '',
          name: name,
          email: email,
          password: password,
          address: '',
          type: '',
          token: '');
    } catch (e) {}
  }
}
