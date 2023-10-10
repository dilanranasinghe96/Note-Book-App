import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  CustomButton(
      {super.key,
      required this.buttonText,
      this.ontap,
      required this.height,
      required this.width,
      required this.color});

  String buttonText;
  VoidCallback? ontap;
  double height;
  double width;
  Color color;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: widget.ontap,
          child: Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
                color: widget.color,
                borderRadius: const BorderRadius.all(Radius.circular(50))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.buttonText,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
