import 'package:flutter/material.dart';

class MobileContactPage extends StatelessWidget {
  const MobileContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text('This is the Mobile Contact Page'),
        ),
      ),
    );
  }
}
