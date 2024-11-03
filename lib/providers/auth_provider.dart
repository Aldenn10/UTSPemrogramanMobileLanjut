import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  String? _email;

  String? get email => _email;

  void login(String email, String password) {
    // Logic for login
    _email = email;
    notifyListeners();
  }

  void register(String email, String password) {
    // Logic for registration
    _email = email;
    notifyListeners();
  }

  void logout() {
    _email = null;
    notifyListeners();
  }
}
