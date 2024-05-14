import 'package:aristo/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 316,
      height: 66,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.anton(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
