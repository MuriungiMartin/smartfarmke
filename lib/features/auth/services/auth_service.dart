// ignore_for_file: empty_catches

import 'package:smartfarmke/models/user.dart';

class AuthService {
  void signUpUser({
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
