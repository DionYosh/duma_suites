import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:duma_suites/screens/Mobile/main/mobile_home_page.dart'; // Make sure to import your MobileHomePage

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  SignInPageState createState() => SignInPageState();
}

class SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signIn() async {
    final response = await http.post(
      Uri.parse('http://your-adonis-api-url/signin'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': _emailController.text,
        'password': _passwordController.text,
      }),
    );

    if (!mounted) {
      return; // Check if the widget is still mounted before using context
    }

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      final String token = responseBody['token']; // Assume the token key

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Sign in successful!')),
      );

      // Navigate to the MobileHomePage and pass the token as an argument
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MobileHomePage(token: token),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Sign in failed')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignIn'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _signIn,
              child: const Text('SignIn'),
            ),
          ],
        ),
      ),
    );
  }
}
