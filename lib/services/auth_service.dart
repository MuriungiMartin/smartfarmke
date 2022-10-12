import 'package:flutter/cupertino.dart';
import 'package:smartfarmke/constants/error_handling.dart';
import 'package:smartfarmke/constants/utils.dart';
import 'package:smartfarmke/models/user.dart';
import 'package:smartfarmke/constants/global_Variables.dart';
import 'package:http/http.dart' as http;

class AuthService {
  //signup the user
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

      http.Response res = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          "Content-Type": 'application/json; charset=UTF-8',
        },
      );
      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(
            context,
            'Account created! Logi using your credentials!',
          );
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
