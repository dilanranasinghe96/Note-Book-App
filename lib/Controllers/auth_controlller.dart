import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:note_book/models/user_model.dart';

class AuthController {
  //Sign out user

  static Future<void> signOutUser() async {
    await FirebaseAuth.instance.signOut();
    Logger().i("User logout");
  }

  //Sign In to usr account

  static Future<void> signInUser(
      {required String emailAddress, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      Logger().i(credential.user!.uid);
      Logger().i("User Signed In");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

//create user account using email and password

  Future<void> createUserAccount(
      {required String email,
      required String password,
      required String name}) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
        email: email,
        password: password,
      )
          .then((value) {
        addUser(value.user!.uid, name, email);
      });

      Logger().i(credential.user!.uid);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Logger().e('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Logger().e('The account already exists for that email.');
      } else if (e.code == 'invalid-email') {
        Logger().e("Invalid Email");
      }
    } catch (e) {
      Logger().e(e);
    }
  }

  static Future<void> sendPasswordResetEmail(String email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  //save user data

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> addUser(String uid, String name, String email) {
    return users
        .doc(uid)
        .set({'name': name, 'uid': uid, 'email': email})
        .then((value) => Logger().i("User added"))
        .catchError((e) => Logger().e(e));
  }

  //Fetch user data

  Future<UserModel> getUserData(String uid) async {
    DocumentSnapshot userData = await users.doc(uid).get();
    return UserModel.fromMap(userData.data() as Map<String, dynamic>);
  }
}
