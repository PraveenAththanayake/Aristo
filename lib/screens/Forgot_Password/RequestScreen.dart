import 'package:aristo/common/widgets/CustomButton.dart';
import 'package:aristo/common/widgets/CustomInputField.dart';
import 'package:aristo/common/widgets/ScreenHeaderText.dart';
import 'package:aristo/common/widgets/TextFieldLabel.dart';
import 'package:aristo/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordRequestScreen extends StatelessWidget {
  const PasswordRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    final padding = screenWidth * 0.05;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (MediaQuery.of(context).viewInsets.bottom > 0)
                  const SizedBox(height: 20),
                const ScreenHeaderText('Request for\nReset Password'),
                SizedBox(height: screenHeight * 0.08),
                const Form(
                  child: Column(
                    children: [
                      TextFieldLabel('WhatsApp Number'),
                      SizedBox(height: 8),
                      CustomInputField(keyboardType: TextInputType.phone),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                Text(
                  'Give your WhatsApp number and\ncontinue to the next steps.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.anticDidone(
                    fontSize: screenWidth * 0.04,
                    color: AppColors.secondaryColor,
                  ),
                ),
                SizedBox(height: screenHeight * 0.1),
                const CustomButton('Next'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
