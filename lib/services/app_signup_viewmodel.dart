import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignUpViewModel extends ChangeNotifier {
  bool _isLoading = false;
  String? _errorMessage;

  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  Future<void> signUp(String email, String username, String gender,
      String password, String passwordConfirmation) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final response = await http.post(
      Uri.parse('http://localhost:5050/api/auth/signup'),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: jsonEncode({
        'email': email,
        'username': username,
        'gender': gender,
        'password': password,
        'password_confirmation': passwordConfirmation,
      }),
    );

    _isLoading = false;
    if (response.statusCode == 201) {
      // Success - Handle navigation or other actions
    } else {
      _errorMessage = jsonDecode(response.body)['message'];
    }
    notifyListeners();
  }
}
