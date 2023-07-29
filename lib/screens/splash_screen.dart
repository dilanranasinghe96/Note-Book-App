import 'package:flutter/material.dart';

import 'login_ui.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginUI(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              size: 60,
              color: Colors.purple,
            ),
            Text(
              'NOTEBOOK',
              style: TextStyle(fontSize: 50, color: Colors.purple),
            )
          ],
        ),
      ),
    );
  }
}
