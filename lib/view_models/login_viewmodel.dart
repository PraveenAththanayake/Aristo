// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '../models/login_model.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginModel _loginModel = LoginModel();

  String? get phoneNumber => _loginModel.phoneNumber;
  String? get password => _loginModel.password;

  void setPhoneNumber(String phoneNumber) {
    _loginModel.phoneNumber = phoneNumber;
    notifyListeners();
  }

  void setPassword(String password) {
    _loginModel.password = password;
    notifyListeners();
  }

  void login() {
    print('Phone Number: ${_loginModel.phoneNumber}');
    print('Password: ${_loginModel.password}');
  }
}
