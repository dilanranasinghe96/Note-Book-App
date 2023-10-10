import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:note_book/components/custom_button.dart';
import 'package:note_book/components/pwd_textfield.dart';
import 'package:note_book/providers/signin_provider.dart';
import 'package:note_book/screens/forgot_pwd.dart';
import 'package:provider/provider.dart';

import 'registration_UI.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  List<String> grade = [
    "https://img.freepik.com/free-vector/empty-scene-with-school-building-nature_1308-53274.jpg",
    'https://static.vecteezy.com/system/resources/thumbnails/008/734/924/small/cartoon-group-of-elementary-school-kids-in-the-school-yard-vector.jpg',
    'https://classroomclipart.com/image/static2/preview2/boy-going-to-school-and-waving-school-clipart-30017.jpg',
    'https://thumbs.dreamstime.com/b/school-building-nature-lovely-landscape-cartoon-school-building-nature-lovely-landscape-cartoon-cute-simple-suitable-115156182.jpg',
    'https://img.freepik.com/premium-vector/funny-students-school-building_29937-3092.jpg',
  ];
  final bool isobscure = true;

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//backgroundColor: Colors.tealAccent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(child: Consumer<SignInProvider>(
          builder: (context, value, child) {
            return Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CarouselSlider(
                    options: CarouselOptions(height: 150.0, autoPlay: true),
                    items: grade.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(i), fit: BoxFit.cover),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(15))),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Email:',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                    ],
                  ),
                ),

                //Email Text Field
                TextField(
                  controller: value.emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter your Email",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        'Password:',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ),
                    ],
                  ),
                ),

                //Password Text Field
                PwdTextField(
                    hint: 'Enter Password',
                    controller: value.passwordController),
                //Login Button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CustomButton(
                        buttonText: 'Login',
                        ontap: () {
                          Provider.of<SignInProvider>(context, listen: false)
                              .signInUser();
                        },
                        color: Colors.deepPurple,
                        height: 40,
                        width: 150,
                      )
                    ],
                  ),
                ),

                //Forgot Password
                Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgotPwd(),
                              ));
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                //Create Account
                Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Registration_UI(),
                              ));
                        },
                        child: const Text(
                          "Create an account",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ],
            );
          },
        )),
      ),
    );
  }
}
