import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PwdTextField extends StatefulWidget {
  PwdTextField({super.key, required this.hint, required this.controller});
  final String hint;
  TextEditingController controller = TextEditingController();
  @override
  State<PwdTextField> createState() => _PwdTextFieldState();
}

class _PwdTextFieldState extends State<PwdTextField> {
  bool isobscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: widget.controller,
            obscureText: isobscure,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    isobscure = !isobscure;
                  });
                },
                child: isobscure
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              ),
              hintText: widget.hint,
            ),
          ),
        ),
      ],
    );
  }
}
