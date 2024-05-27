import 'package:aristo/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TextFieldLabel extends StatelessWidget {
  const TextFieldLabel(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontSize: 15,
          color: AppColors.secondaryColor,
        ));
  }
}
