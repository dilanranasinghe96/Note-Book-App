import 'package:flutter/material.dart';
import 'package:note_book/Controllers/auth_controlller.dart';
import 'package:note_book/screens/grades/gradetweleve.dart';
import 'package:note_book/screens/grades/olevel.dart';
import 'package:provider/provider.dart';

import '../components/grade_container.dart';
import '../components/subject_list.dart';
import '../providers/user_provider.dart';

class Grade extends StatefulWidget {
  const Grade({super.key});

  @override
  State<Grade> createState() => _GradeState();
}

class _GradeState extends State<Grade> {
  List<Map<String, dynamic>> grade = [
    {'name': 'Grade 6'},
    {'name': 'Grade 7'},
    {'name': 'Grade 8'},
    {'name': 'Grade 9'},
    {'name': 'Grade 10'},
    {'name': 'Grade 11'},
    {'name': 'Grade 12'},
    {'name': 'Grade 13'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(Provider.of<UserProvider>(context).userData!.name),
                  IconButton(
                      onPressed: () {
                        AuthController.signOutUser();
                      },
                      icon: const Icon(
                        Icons.exit_to_app,
                        size: 30,
                      )),
                ],
              ),
              const SizedBox(
                height: 100,
              ),

              //Grade 6
              const GradeContainer(
                color: Colors.greenAccent,
                gName: 'Grade 6',
                navi: SubjectList(),
              ),
              //Grade 7
              const GradeContainer(
                color: Colors.lightBlue,
                gName: 'Grade 7',
                navi: SubjectList(),
              ),

              //Grade 8
              const GradeContainer(
                color: Colors.purpleAccent,
                gName: 'Grade 8',
                navi: SubjectList(),
              ),

              //Grade 9
              const GradeContainer(
                color: Colors.amber,
                gName: 'Grade 9',
                navi: SubjectList(),
              ),

              //Grade 10
              const GradeContainer(
                color: Colors.redAccent,
                gName: 'Grade 10',
                navi: Olevel(),
              ),

              //Grade 11
              const GradeContainer(
                color: Colors.indigoAccent,
                gName: 'Grade 11',
                navi: Olevel(),
              ),

              //Grade 12,13
              const GradeContainer(
                color: Colors.pinkAccent,
                gName: 'Grade 12/13',
                navi: GradeTwelve(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
