import 'package:flutter/material.dart';

class MobileEventsPage extends StatelessWidget {
  const MobileEventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text('This is the Mobile About Page'),
        ),
      ),
    );
  }
}
