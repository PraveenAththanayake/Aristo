import 'package:aristo/common/widgets/CustomInputField.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'Aristo',
              style: GoogleFonts.majorMonoDisplay(
                fontSize: 60,
                fontWeight: FontWeight.normal,
                letterSpacing: 2.0,
              ),
            ),
            const Spacer(),
            const SizedBox(height: 20),
            Text(
              'Version 1.0',
              style: GoogleFonts.marvel(
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              '© 2024 All rights reserved\nPowered by HIGHSILICON',
              textAlign: TextAlign.center,
              style: GoogleFonts.marvel(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 50),
            CustomInputField(),
          ],
        ),
      ),
    );
  }
}
