import 'package:flutter/material.dart';

class MobileAuthPage extends StatelessWidget {
  const MobileAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/signIn'),
          child: const Text('Sign In'),
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/signUp'),
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}
