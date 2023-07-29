import 'package:flutter/material.dart';

class GradeContainer extends StatelessWidget {
  GradeContainer(
      {super.key,
      required this.navi,
      required this.gName,
      required this.color});

  dynamic navi;
  String gName;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 50,
        width: 360,
        child: ElevatedButton(
            style: ButtonStyle(
                shape: const MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)))),
                backgroundColor: MaterialStatePropertyAll(color)),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => navi,
                  ));
            },
            child: Text(
              gName,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )),
      ),
    );
  }
}
