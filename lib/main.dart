import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:note_book/providers/signin_provider.dart';
import 'package:note_book/providers/signup_provider.dart';
import 'package:note_book/providers/user_provider.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';
import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => SignUpProvider(),
        child: const MyApp(),
      ),
      ChangeNotifierProvider(
        create: (context) => SignInProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => UserProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'note_book',
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}
