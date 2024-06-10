import 'package:flutter/material.dart';

class NotificationDetailPage extends StatelessWidget {
  final String notification;

  const NotificationDetailPage({required this.notification, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(notification), // Displaying notification detail
        ),
      ),
    );
  }
}
