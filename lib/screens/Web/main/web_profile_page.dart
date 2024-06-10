import 'package:flutter/material.dart';

class WebProfilePage extends StatelessWidget {
  const WebProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Center(
        child: Text('Web Profile Page'),
      ),
    );
  }
}
