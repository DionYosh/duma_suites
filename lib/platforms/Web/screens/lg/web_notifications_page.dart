import 'package:flutter/material.dart';

class WebNotificationsPage extends StatelessWidget {
  const WebNotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: const Center(
        child: Text('Web Notifications Page'),
      ),
    );
  }
}
