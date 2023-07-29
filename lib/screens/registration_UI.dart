import 'package:flutter/material.dart';

import 'login_ui.dart';

class Registration_UI extends StatefulWidget {
  const Registration_UI({super.key});

  @override
  State<Registration_UI> createState() => _Registration_UIState();
}

class _Registration_UIState extends State<Registration_UI> {
  get passwordController => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text("Registration",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 25,
              ),
              //Full name
              Row(
                children: const [
                  Text(
                    "Full Name:",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Full name",
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //Email
              Row(
                children: const [
                  Text(
                    "E mail:",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "E mail",
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //Phone number
              Row(
                children: const [
                  Text(
                    "Phone No:",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Phone Number",
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //password
              Row(
                children: const [
                  Text(
                    "Password:",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: const [
                  Text(
                    "Re-type Password:",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Password",
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //Register button
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginUI(),
                        ));
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
