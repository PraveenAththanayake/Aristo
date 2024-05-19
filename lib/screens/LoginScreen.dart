import 'package:aristo/common/widgets/CustomButton.dart';
import 'package:aristo/common/widgets/CustomInputField.dart';
import 'package:aristo/common/widgets/ScreenHeaderText.dart';
import 'package:aristo/common/widgets/TextFieldLabel.dart';
import 'package:aristo/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                const ScreenHeaderText('Login'),
                SizedBox(height: screenHeight * 0.08),
                const Form(
                  child: Column(
                    children: [
                      TextFieldLabel('WhatsApp Number'),
                      SizedBox(height: 13),
                      CustomInputField(keyboardType: TextInputType.phone),
                      SizedBox(height: 32),
                      TextFieldLabel('Password'),
                      SizedBox(height: 13),
                      CustomInputField(keyboardType: TextInputType.text),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        style: GoogleFonts.anticDidone(
                          fontSize: 15,
                          color: AppColors.secondaryColor,
                        ),
                        children: const [
                          TextSpan(text: 'Forgot Password? '),
                          TextSpan(
                            text: 'Reset Now',
                            style: TextStyle(color: AppColors.primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                const CustomButton('Login'),
                SizedBox(height: screenHeight * 0.05),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.anticDidone(
                      fontSize: 15,
                      color: AppColors.secondaryColor,
                    ),
                    children: const [
                      TextSpan(text: 'Not have an account? '),
                      TextSpan(
                        text: 'Register Now',
                        style: TextStyle(color: AppColors.primaryColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
