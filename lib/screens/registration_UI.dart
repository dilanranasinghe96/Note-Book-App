import 'package:flutter/material.dart';
import 'package:note_book/components/pwd_textfield.dart';
import 'package:note_book/providers/signup_provider.dart';
import 'package:provider/provider.dart';

import '../components/custom_button.dart';
import '../components/custom_textfield.dart';

class Registration_UI extends StatefulWidget {
  const Registration_UI({super.key});

  @override
  State<Registration_UI> createState() => _Registration_UIState();
}

class _Registration_UIState extends State<Registration_UI> {
  bool isobscure1 = true;
  bool isobscure2 = true;

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              const Text("Registration",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 25,
              ),

              CustomTextField(
                hint: 'Enter Email Address',
                controller:
                    Provider.of<SignUpProvider>(context).emailController,
              ),
              CustomTextField(
                hint: 'Enter Your name',
                controller: Provider.of<SignUpProvider>(context).nameController,
              ),

              PwdTextField(
                hint: 'Enter Password',
                controller:
                    Provider.of<SignUpProvider>(context).passwordController,
              ),

              PwdTextField(
                hint: 'Re-type Password',
                controller: Provider.of<SignUpProvider>(context)
                    .confirmPasswordController,
              ),

              //Register button
              CustomButton(
                buttonText: 'Register',
                ontap: () {
                  Provider.of<SignUpProvider>(context, listen: false)
                      .signUpUser();
                },
                color: Colors.deepPurple,
                height: 40,
                width: 150,
              )
            ],
          ),
        ),
      ),
    );
  }
}
