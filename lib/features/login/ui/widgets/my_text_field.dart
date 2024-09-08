import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final IconData icon;
  final String hint;
  final TextEditingController ctrlr;
  const MyTextField({
    super.key,
    required this.icon,
    required this.hint,
    required this.ctrlr,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: ctrlr,
      decoration: InputDecoration(
          suffixIcon: Icon(icon),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(0, 0, 0, 0),
            ),
          ),
          hintText: hint,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(0, 0, 0, 0),
            ),
          )),
    );
  }
}
