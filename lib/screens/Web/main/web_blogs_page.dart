import 'package:flutter/material.dart';

class WebBlogsPage extends StatelessWidget {
  const WebBlogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blogs'),
      ),
      body: const Center(
        child: Text('Web Blogs Page'),
      ),
    );
  }
}
