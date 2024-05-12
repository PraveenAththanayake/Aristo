import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300),
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300),
              borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            )));
  }
}
