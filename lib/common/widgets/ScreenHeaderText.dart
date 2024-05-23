import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenHeaderText extends StatelessWidget {
  const ScreenHeaderText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.anticDidone(
        fontSize: MediaQuery.of(context).size.width * 0.1,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
