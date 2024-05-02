import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'A R I S T O',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            Spacer(),
            SizedBox(height: 20),
            Text(
              'Version 1.0',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '© 2024 All rights reserved\nPowered by HIGHSILICON',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
