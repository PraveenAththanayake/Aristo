import 'package:aristo/common/widgets/CustomButton.dart';
import 'package:aristo/common/widgets/CustomInputField.dart';
import 'package:aristo/common/widgets/ScreenHeaderText.dart';
import 'package:aristo/common/widgets/TextFieldLabel.dart';
import 'package:flutter/material.dart';

class TeacherProfileScreen extends StatelessWidget {
  const TeacherProfileScreen({super.key});

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
              children: [
                if (MediaQuery.of(context).viewInsets.bottom > 0)
                  const SizedBox(height: 20),
                const ScreenHeaderText('Create\nTeacher Profile'),
                SizedBox(height: screenHeight * 0.05),
                const Form(
                  child: Column(
                    children: [
                      TextFieldLabel('First Name'),
                      SizedBox(height: 13),
                      CustomInputField(keyboardType: TextInputType.text),
                      SizedBox(height: 32),
                      TextFieldLabel('Last Name'),
                      SizedBox(height: 13),
                      CustomInputField(keyboardType: TextInputType.text),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                const CustomButton('Login'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
