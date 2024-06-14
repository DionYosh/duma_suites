import 'package:flutter/material.dart';

class MobileAboutPage extends StatelessWidget {
  const MobileAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Center(
          child: Text('This is the Mobile About Page'),
        ),
      ),
    );
  }
}
