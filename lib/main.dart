import 'package:aristo/screens/CreateAccountScreen.dart';
import 'package:aristo/view_models/create_account_viewmodel.dart';
import 'package:aristo/view_models/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CreateAccountViewModel()),
        ChangeNotifierProvider(create: (_) => LoginViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aristo',
        theme: ThemeData(
          textTheme: GoogleFonts.anticDidoneTextTheme(),
        ),
        home: const CreateAccountScreen(),
      ),
    );
  }
}
