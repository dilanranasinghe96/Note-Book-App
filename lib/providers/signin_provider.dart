import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';
import 'package:note_book/Controllers/auth_controlller.dart';

class SignInProvider extends ChangeNotifier {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _recoveryEmailController =
      TextEditingController();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get recoveryEmailController => _recoveryEmailController;

  Future<void> signInUser() async {
    if (_emailController.text.isEmpty) {
      Logger().e("Check Your Email");
    } else if (_passwordController.text.isEmpty) {
      Logger().e("Check Your Password");
    } else {
      AuthController.signInUser(
              emailAddress: _emailController.text,
              password: _passwordController.text)
          .then((value) {
        _emailController.text = "";
        _passwordController.text = "";
      });
    }
  }

  Future<void> sendResetEmail() async {
    if (_recoveryEmailController.text.isEmpty) {
      Logger().e("Check Your Email");
    } else {
      AuthController.sendPasswordResetEmail(_recoveryEmailController.text)
          .then((value) {
        Fluttertoast.showToast(
            msg: "Email sent to ${_recoveryEmailController.text}",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.SNACKBAR,
            timeInSecForIosWeb: 5,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0);
        _recoveryEmailController.text = "";
      });
    }
  }
}
