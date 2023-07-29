import 'package:flutter/material.dart';

import '../subjectnotes.dart';

class Olevel extends StatefulWidget {
  const Olevel({super.key});

  @override
  State<Olevel> createState() => _OlevelState();
}

class _OlevelState extends State<Olevel> {
  List<Map<String, dynamic>> subject_ol = [
    {'sname': 'Sinhala'},
    {'sname': 'Budhism'},
    {'sname': 'Science'},
    {'sname': 'Mathematics'},
    {'sname': 'English'},
    {'sname': 'History'},
    {'sname': 'Tamil'},
    {'sname': 'Citizen Education'},
    {'sname': 'Commerce'},
    {'sname': 'Music'},
    {'sname': 'Drama'},
    {'sname': 'Art'},
    {'sname': 'Dancing'},
    {'sname': 'Sinhala Literature'},
    {'sname': 'English Literature'},
    {'sname': 'Health Educaiton'},
    {'sname': 'ICT'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.builder(
          itemCount: subject_ol.length,
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
                        subject_ol[index]['sname'],
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
