import 'package:flutter/foundation.dart';
import 'package:duma_suites/services/app_base_client.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const String baseUrl = 'http://localhost:5050/api';
const String apiKey = '4C0S-fBL8ioTsxplZC5fQubpv1AYf6Zi';

class AuthService {
  final FlutterSecureStorage storage = const FlutterSecureStorage();
  final BaseClient client;

  AuthService()
      : client = BaseClient(
          baseUrl: baseUrl,
          defaultHeaders: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'User-Agent': 'DumaSuitesApp/1.0.0',
            'Authorization': 'Bearer $apiKey',
          },
        );

  Future<void> signup(String username, String email, String gender,
      String password, String passwordConfirmation) async {
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
      // Log the error for debugging purposes
      if (kDebugMode) {
        print('Error: $e');
      }
      // Provide a more specific error message
      throw Exception('Failed to sign up. Please try again later.');
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
      // Log the error for debugging purposes
      if (kDebugMode) {
        print('Error: $e');
      }
      // Provide a more specific error message
      throw Exception('Failed to sign in. Please check your credentials and try again.');
    }
  }

  Future<String?> getToken() async {
    return await storage.read(key: 'token');
  }
}
