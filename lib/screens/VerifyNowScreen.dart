import 'package:aristo/common/widgets/CustomButton.dart';
import 'package:aristo/common/widgets/CustomInputField.dart';
import 'package:aristo/common/widgets/ScreenHeaderText.dart';
import 'package:aristo/common/widgets/TextFieldLabel.dart';
import 'package:aristo/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyNowScreen extends StatelessWidget {
  const VerifyNowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (MediaQuery.of(context).viewInsets.bottom > 0)
                const SizedBox(height: 20),
              const ScreenHeaderText('Verify Now'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              const TextFieldLabel(
                  'We sent to verification code to the\nyour WhatsApp phone number.'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const CustomInputField(
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Text('00:59',
                  style: GoogleFonts.anticDidone(
                    fontSize: 15,
                    color: AppColors.secondaryColor,
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              const CustomButton('Verify Now'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.anticDidone(
                    fontSize: 15,
                    color: AppColors.secondaryColor,
                  ),
                  children: const [
                    TextSpan(text: "Still didn't get thhe code? "),
                    TextSpan(
                      text: 'Re-send code',
                      style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
