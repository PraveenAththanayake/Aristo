// lib/views/login_screen.dart
import 'package:aristo/screens/CreateAccountScreen.dart';
import 'package:aristo/view_models/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../common/widgets/CustomButton.dart';
import '../common/widgets/CustomInputField.dart';
import '../common/widgets/ScreenHeaderText.dart';
import '../common/widgets/TextFieldLabel.dart';
import '../theme/app_colors.dart';

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
                Consumer<LoginViewModel>(
                  builder: (context, viewModel, child) {
                    return const Form(
                      child: Column(
                        children: [
                          TextFieldLabel('WhatsApp Number'),
                          SizedBox(height: 13),
                          CustomInputField(
                            keyboardType: TextInputType.phone,
                          ),
                          SizedBox(height: 32),
                          TextFieldLabel('Password'),
                          SizedBox(height: 13),
                          CustomInputField(
                            keyboardType: TextInputType.text,
                          ),
                        ],
                      ),
                    );
                  },
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
                Consumer<LoginViewModel>(
                  builder: (context, viewModel, child) {
                    return const CustomButton(
                      'Login',
                    );
                  },
                ),
                SizedBox(height: screenHeight * 0.05),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Not have an account? ',
                        style: TextStyle(color: AppColors.secondaryColor),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CreateAccountScreen()),
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(0, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                          'Register Now',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
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
