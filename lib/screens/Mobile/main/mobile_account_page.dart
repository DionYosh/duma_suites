import 'package:flutter/material.dart';
import 'package:duma_suites/screens/Mobile/main/mobile_auth_page.dart';
import 'package:duma_suites/screens/Mobile/main/mobile_profile_page.dart';

class MobileAccountPage extends StatelessWidget {
  final bool isUserAuthenticated;

  const MobileAccountPage({super.key, required this.isUserAuthenticated});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: isUserAuthenticated
              ? const MobileProfilePage()
              : const MobileAuthPage(),
        ),
      ),
    );
  }
}
