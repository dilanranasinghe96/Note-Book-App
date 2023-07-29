// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBj5hNNMkvnZmCjaRawuN7D_R4vXj5g5Mo',
    appId: '1:738649146943:web:ab03424d042e10ba319a8a',
    messagingSenderId: '738649146943',
    projectId: 'notebook1-flutter',
    authDomain: 'notebook1-flutter.firebaseapp.com',
    storageBucket: 'notebook1-flutter.appspot.com',
    measurementId: 'G-2V5P0RXVPG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBisF9O9427hDLS_XibWqriD-SOVYZ2epc',
    appId: '1:738649146943:android:5355ec28aae678b3319a8a',
    messagingSenderId: '738649146943',
    projectId: 'notebook1-flutter',
    storageBucket: 'notebook1-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDAZNphHVY61fbKZz0tPUhp6SZvOISu1MM',
    appId: '1:738649146943:ios:d6d76d24216c7f9c319a8a',
    messagingSenderId: '738649146943',
    projectId: 'notebook1-flutter',
    storageBucket: 'notebook1-flutter.appspot.com',
    iosClientId:
        '738649146943-26tlloj2krsse0sdmts50i5qvo2cdnbs.apps.googleusercontent.com',
    iosBundleId: 'lk.dilan_projects.note_book',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDAZNphHVY61fbKZz0tPUhp6SZvOISu1MM',
    appId: '1:738649146943:ios:d6d76d24216c7f9c319a8a',
    messagingSenderId: '738649146943',
    projectId: 'notebook1-flutter',
    storageBucket: 'notebook1-flutter.appspot.com',
    iosClientId:
        '738649146943-26tlloj2krsse0sdmts50i5qvo2cdnbs.apps.googleusercontent.com',
    iosBundleId: 'lk.dilan_projects.note_book',
  );
}