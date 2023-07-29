import 'package:flutter/material.dart';

import '../subjectnotes.dart';

class GradeTwelve extends StatefulWidget {
  const GradeTwelve({super.key});

  @override
  State<GradeTwelve> createState() => _GradeTwelveState();
}

class _GradeTwelveState extends State<GradeTwelve> {
  List<Map<String, dynamic>> subject_al = [
    {'sname': 'Combined Maths'},
    {'sname': 'Physics'},
    {'sname': 'Chemestry'},
    {'sname': 'ICT'},
    {'sname': 'Agriculture'},
    {'sname': 'Sinhala'},
    {'sname': 'Media'},
    {'sname': 'Political Science'},
    {'sname': ''},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.builder(
          itemCount: subject_al.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SubjectNotes(),
                      ));
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.lightGreen),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        subject_al[index]['sname'],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
