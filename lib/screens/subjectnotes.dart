//Notes

import 'package:flutter/material.dart';

class SubjectNotes extends StatefulWidget {
  const SubjectNotes({super.key});

  @override
  State<SubjectNotes> createState() => _SubjectNotesState();
}

class _SubjectNotesState extends State<SubjectNotes> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Notes")],
        ),
      ),
    );
  }
}
