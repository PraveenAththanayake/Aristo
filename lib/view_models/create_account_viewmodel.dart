import 'package:flutter/material.dart';
import '../models/create_account_model.dart';

class CreateAccountViewModel extends ChangeNotifier {
  final CreateAccountModel _createAccountModel = CreateAccountModel();

  String? get phoneNumber => _createAccountModel.phoneNumber;
  String? get username => _createAccountModel.username;
  String? get password => _createAccountModel.password;

  void setPhoneNumber(String phoneNumber) {
    _createAccountModel.phoneNumber = phoneNumber;
    notifyListeners();
  }

  void setUsername(String username) {
    _createAccountModel.username = username;
    notifyListeners();
  }

  void setPassword(String password) {
    _createAccountModel.password = password;
    notifyListeners();
  }

  void createAccount() {
    print(
        'Creating account with phone: ${_createAccountModel.phoneNumber}, username: ${_createAccountModel.username}, password: ${_createAccountModel.password}');
  }
}
