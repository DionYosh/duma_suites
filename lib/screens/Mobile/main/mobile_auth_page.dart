import 'package:flutter/material.dart';
import 'package:duma_suites/screens/Mobile/auth/sign_in_page.dart';
import 'package:duma_suites/screens/Mobile/auth/sign_up_page.dart';

class MobileAuthPage extends StatelessWidget {
  const MobileAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, const SignInPage() as String),
                  child: const Text('Sign In'),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, const SignUpPage() as String),
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
