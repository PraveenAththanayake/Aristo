import 'package:aristo/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({Key? key, this.keyboardType = TextInputType.text})
      : super(key: key);

  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 316,
        height: 66,
        child: TextField(
          textAlign: TextAlign.center,
          keyboardType: keyboardType,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.secondaryColor),
              borderRadius: BorderRadius.all(Radius.circular(45.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.secondaryColor),
              borderRadius: BorderRadius.all(Radius.circular(45.0)),
            ),
          ),
          style: const TextStyle(fontSize: 30, color: AppColors.secondaryColor),
        ),
      ),
    );
  }
}
