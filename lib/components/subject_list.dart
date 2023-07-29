import 'package:flutter/material.dart';

import '../screens/subjectnotes.dart';

class SubjectList extends StatefulWidget {
  const SubjectList({
    super.key,
  });

  @override
  State<SubjectList> createState() => _SubjectListState();
}

class _SubjectListState extends State<SubjectList> {
  List<Map<String, dynamic>> subject = [
    {'sname': 'Sinhala'},
    {'sname': 'Budhism'},
    {'sname': 'Science'},
    {'sname': 'Mathematics'},
    {'sname': 'English'},
    {'sname': 'Tamil'},
    {'sname': 'History'},
    {'sname': 'Health Educaiton'},
    {'sname': 'Citizen Education'},
    {'sname': 'PTS'},
    {'sname': 'Music'},
    {'sname': 'Art'},
    {'sname': 'Drama'},
    {'sname': 'Dancing'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.builder(
        itemCount: subject.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: GestureDetector(
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
                      subject[index]['sname'],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
