import 'package:flutter/material.dart';
import 'package:duma_suites/services/app_auth_service.dart';

class MobileAuthPage extends StatefulWidget {
  const MobileAuthPage({super.key});

  @override
  MobileAuthPageState createState() => MobileAuthPageState();
}

class MobileAuthPageState extends State<MobileAuthPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController username = TextEditingController();
  final TextEditingController gender = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController passwordConfirmation = TextEditingController();

  final AuthService authService = AuthService(); // Create an instance of AuthService

  Future<void> signUp() async {
    try {
      await authService.signup(
        email.text,
        username.text,
        gender.text,
        password.text,
        passwordConfirmation.text,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User created successfully')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to create user: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: email,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: username,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: gender,
              decoration: const InputDecoration(labelText: 'Gender'),
            ),
            TextField(
              controller: password,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            TextField(
              controller: passwordConfirmation,
              decoration: const InputDecoration(labelText: 'Confirm Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: signUp,
              child: const Text('Signup'),
            ),
          ],
        ),
      ),
    );
  }
}
