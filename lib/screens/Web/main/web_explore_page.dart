import 'package:flutter/material.dart';

class WebExplorerPage extends StatelessWidget {
  const WebExplorerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explorer'),
      ),
      body: const Center(
        child: Text('Web Explorer Page'),
      ),
    );
  }
}
