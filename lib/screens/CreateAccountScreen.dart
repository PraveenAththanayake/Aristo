import 'package:aristo/view_models/create_account_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../common/widgets/CustomButton.dart';
import '../common/widgets/CustomInputField.dart';
import '../common/widgets/ScreenHeaderText.dart';
import '../common/widgets/TextFieldLabel.dart';
import '../theme/app_colors.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

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
                const ScreenHeaderText('Create an Account!'),
                SizedBox(height: screenHeight * 0.08),
                Consumer<CreateAccountViewModel>(
                  builder: (context, viewModel, child) {
                    return const Form(
                      child: Column(
                        children: [
                          TextFieldLabel('WhatsApp Number'),
                          SizedBox(height: 8),
                          CustomInputField(
                            keyboardType: TextInputType.phone,
                          ),
                          SizedBox(height: 20),
                          TextFieldLabel('Username'),
                          SizedBox(height: 8),
                          CustomInputField(
                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(height: 20),
                          TextFieldLabel('Password'),
                          SizedBox(height: 8),
                          CustomInputField(
                            keyboardType: TextInputType.text,
                          ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(height: screenHeight * 0.1),
                Consumer<CreateAccountViewModel>(
                  builder: (context, viewModel, child) {
                    return const CustomButton(
                      'Register',
                    );
                  },
                ),
                SizedBox(height: screenHeight * 0.01),
                Center(
                  child: Text(
                    'By clicking Register, you agree to our\nTerms & Conditions and Privacy Statement',
                    style: GoogleFonts.anticDidone(
                      fontSize: 12,
                      color: AppColors.secondaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.anticDidone(
                      fontSize: 15,
                      color: AppColors.secondaryColor,
                    ),
                    children: const [
                      TextSpan(text: 'Already have an account? '),
                      TextSpan(
                        text: 'Login Now',
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
