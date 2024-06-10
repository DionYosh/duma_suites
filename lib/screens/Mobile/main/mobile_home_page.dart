import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  final String token;

  const MobileHomePage({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text('This is the Mobile Home Page. Token: $token'),
        ),
      ),
    );
  }
}
