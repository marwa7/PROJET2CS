import 'package:cnas/models/auth/login_model.dart';
import 'package:cnas/config/generale_vars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart' as dio;
import 'package:shared_preferences/shared_preferences.dart';

import '../../data classes/Patient.dart';
import '../../config/const.dart';
import '../../views/home.dart';

class LoginViewModel extends ChangeNotifier {
  final credentialController = TextEditingController();
  final passwordController = TextEditingController();
  bool working = false;
  final model = LoginModel();

  Future<void> login(BuildContext context) async {
    if (working) return;
    working = true;
    notifyListeners();
    dio.Response? response = await model.login(
      type: 'staff_cnas',
      credentiel: credentialController.text,
      password: passwordController.text,
    );

    if (response == null) {
      showSnackBar(context: context, message: "erreur dans l'authentification");
      working = false;
      notifyListeners();
      return;
    }
    if (response.statusCode == 200) {
      navigateToHome(context);
    } else {
      showSnackBar(context: context, message: "erreur dans l'authentification");
    }

    working = false;
    notifyListeners();
  }

  displayErrors(
      {required BuildContext context, required Map<String, dynamic> data}) {
    String message = "";
    var errors = data['errors'];
    errors.forEach((key, value) {
      message = message + value[0] + '\n';
    });
    message = message.substring(0, message.length - 1);
    showSnackBar(context: context, message: message);
  }

  int isPhone(String s) {
    return double.tryParse(s) != null ? 1 : 0;
  }

  String getLoginParamName(String s) {
    return double.tryParse(s) != null ? 'phone' : 'email';
  }

  navigateToHome(BuildContext context) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => Home()), (route) => false);
  }

  showSnackBar(
      {required BuildContext context,
      required String message,
      Duration duration = const Duration(seconds: 4)}) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.blue,
      behavior: SnackBarBehavior.floating,
      duration: duration,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
