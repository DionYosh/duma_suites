import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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

  Future<void> signUp() async {
    final response = await http.post(
      Uri.parse('https://localhost:5050/api/auth/signup'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email.text,
        'username': username.text,
        'gender': gender.text,
        'password': password.text,
        'password_confirmation': passwordConfirmation.text,
      }),
    );

    if (!mounted) {
      return; // Check if the widget is still mounted before using context
    }

    if (response.statusCode == 201) {
      final responseBody = json.decode(response.body);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(responseBody['message'])),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to create user')),
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
