import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final String baseUrl = 'https://dumasuites.com/api';
  final storage = const FlutterSecureStorage();

  Future<void> signup(String username, String email, String gender,
      String password, String passwordConfirmation) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/signup'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'username': username,
        'email': email,
        'gender': gender,
        'password': password,
        'password_confirmation': passwordConfirmation,
      }),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      await storage.write(key: 'token', value: data['token']['token']);
      if (kDebugMode) {
        print('User signed up and token stored.');
      }
    } else {
      throw Exception('Failed to sign up');
    }
  }

  Future<void> signin(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/auth/signin'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      await storage.write(key: 'token', value: data['token']);
      if (kDebugMode) {
        print('User signed in and token stored.');
      }
    } else {
      throw Exception('Failed to sign in');
    }
  }

  Future<String?> getToken() async {
    return await storage.read(key: 'token');
  }
}
