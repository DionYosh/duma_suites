import 'package:flutter/material.dart';

class MobileTechnologyPage extends StatelessWidget {
  const MobileTechnologyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Technology'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: const Center(
          child: Text('This is the Mobile Technology Page'),
        ),
      ),
    );
  }
}
