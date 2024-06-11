import 'package:flutter/foundation.dart';
import 'package:duma_suites/services/app_base_client.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final String baseUrl = 'https://dumasuites.com/api';
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  final BaseClient client;

  AuthService()
      : client = BaseClient(
          baseUrl: 'https://dumasuites.com/api',
          defaultHeaders: {
            'Content-Type': 'application/json',
          },
        );

  Future<void> signup(String username, String email, String gender, String password, String passwordConfirmation) async {
    try {
      final data = await client.post('auth/signup', {
        'username': username,
        'email': email,
        'gender': gender,
        'password': password,
        'password_confirmation': passwordConfirmation,
      });

      await storage.write(key: 'token', value: data['token']['token']);
      if (kDebugMode) {
        print('User signed up and token stored.');
      }
    } catch (e) {
      throw Exception('Failed to sign up: $e');
    }
  }

  Future<void> signin(String email, String password) async {
    try {
      final data = await client.post('auth/signin', {
        'email': email,
        'password': password,
      });

      await storage.write(key: 'token', value: data['token']);
      if (kDebugMode) {
        print('User signed in and token stored.');
      }
    } catch (e) {
      throw Exception('Failed to sign in: $e');
    }
  }

  Future<String?> getToken() async {
    return await storage.read(key: 'token');
  }
}
