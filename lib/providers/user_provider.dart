import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:note_book/Controllers/auth_controlller.dart';
import 'package:note_book/providers/profile_provider.dart';
import 'package:provider/provider.dart';

import '../models/user_model.dart';
import '../screens/grade.dart';
import '../screens/login_ui.dart';
import '../utils/navigator_utils.dart';

class UserProvider extends ChangeNotifier {
  UserModel? _user;
  UserModel? get userData => _user;

  checkAuthState(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) async {
      if (user == null) {
        CustomNavigator.goTo(context, const LoginUI());
        Logger().e('User is currently signed out!');
      } else {
        fetchData(user.uid, context).then((value) {
          CustomNavigator.goTo(context, const Grade());
          Logger().i('User is signed in!--- ');
        });
      }
    });
  }

  Future<void> fetchData(uid, context) async {
    _user = await AuthController().getUserData(uid);
    Provider.of<ProfileProvider>(context, listen: false)
        .setUserName(_user!.name);
    notifyListeners();
  }
}
