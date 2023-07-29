import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:note_book/screens/forgot_pwd.dart';

import 'grade.dart';
import 'registration_UI.dart';

class LoginUI extends StatefulWidget {
  const LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  bool isobscure = true;
  List<String> grade = [
    "https://img.freepik.com/free-vector/empty-scene-with-school-building-nature_1308-53274.jpg",
    'https://static.vecteezy.com/system/resources/thumbnails/008/734/924/small/cartoon-group-of-elementary-school-kids-in-the-school-yard-vector.jpg',
    'https://classroomclipart.com/image/static2/preview2/boy-going-to-school-and-waving-school-clipart-30017.jpg',
    'https://thumbs.dreamstime.com/b/school-building-nature-lovely-landscape-cartoon-school-building-nature-lovely-landscape-cartoon-cute-simple-suitable-115156182.jpg',
    'https://img.freepik.com/premium-vector/funny-students-school-building_29937-3092.jpg',
  ];
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//backgroundColor: Colors.tealAccent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
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
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15))),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),

              //App Image
              // Container(
              //   width: 100,
              //   height: 100,
              //   decoration: const BoxDecoration(
              //       image: DecorationImage(
              //           fit: BoxFit.cover,
              //           image: NetworkImage(
              //               "https://leverageedublog.s3.ap-south-1.amazonaws.com/blog/wp-content/uploads/2019/11/23171201/Subject-combination.jpg"))),
              // ),

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
                controller: emailController,
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

              TextField(
                controller: passwordController,
                obscureText: isobscure,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        isobscure = !isobscure;
                      });
                    },
                    child: Icon(
                        isobscure ? Icons.visibility : Icons.visibility_off),
                  ),
                  hintText: "Enter Your Password",
                ),
              ),

              //Login Button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                          style: const ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30)))),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.deepPurple)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Grade(),
                                ));
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
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
                              builder: (context) => const ForgotPwd(),
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
          ),
        ),
      ),
    );
  }
}
