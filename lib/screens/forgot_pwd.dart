import 'package:flutter/material.dart';
import 'package:note_book/components/custom_button.dart';
import 'package:note_book/components/custom_textfield.dart';
import 'package:note_book/providers/signin_provider.dart';
import 'package:provider/provider.dart';

class ForgotPwd extends StatelessWidget {
  const ForgotPwd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomTextField(
                  hint: "Enter Your Email",
                  controller: Provider.of<SignInProvider>(context)
                      .recoveryEmailController)),
          CustomButton(
            buttonText: "Reset Password",
            color: Colors.deepPurple,
            height: 40,
            width: 170,
            ontap: () {
              Provider.of<SignInProvider>(context, listen: false)
                  .sendResetEmail();
            },
          )
        ],
      ),
    ));
  }
}
