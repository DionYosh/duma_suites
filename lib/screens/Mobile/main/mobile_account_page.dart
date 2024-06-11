import 'package:flutter/material.dart';
import 'package:duma_suites/screens/Mobile/main/mobile_auth_page.dart';
import 'package:duma_suites/screens/Mobile/main/mobile_profile_page.dart';

class MobileAccountPage extends StatelessWidget {
  final bool isUserAuthenticated = false;

  const MobileAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: isUserAuthenticated
            ? const MobileProfilePage()
            : const MobileAuthPage(),
      ),
    );
  }
}
