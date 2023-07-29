import 'package:flutter/material.dart';
import 'package:note_book/screens/grades/gradetweleve.dart';
import 'package:note_book/screens/grades/olevel.dart';

import '../components/subject_list.dart';
import 'grade_container.dart';

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
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),

//Grade 6
            GradeContainer(
              color: Colors.greenAccent,
              gName: 'Grade 6',
              navi: const SubjectList(),
            ),
//Grade 7
            GradeContainer(
              color: Colors.lightBlue,
              gName: 'Grade 7',
              navi: const SubjectList(),
            ),

//Grade 8
            GradeContainer(
              color: Colors.purpleAccent,
              gName: 'Grade 8',
              navi: const SubjectList(),
            ),

//Grade 9
            GradeContainer(
              color: Colors.amber,
              gName: 'Grade 9',
              navi: const SubjectList(),
            ),

//Grade 10
            GradeContainer(
              color: Colors.redAccent,
              gName: 'Grade 10',
              navi: const Olevel(),
            ),

//Grade 11
            GradeContainer(
              color: Colors.indigoAccent,
              gName: 'Grade 11',
              navi: const Olevel(),
            ),

//Grade 12,13
            GradeContainer(
              color: Colors.pinkAccent,
              gName: 'Grade 12/13',
              navi: const GradeTwelve(),
            ),
          ],
        ),
      ),
    );
  }
}
