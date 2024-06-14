import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

// Mobile version
import 'package:duma_suites/widgets/bottom_navigation.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_home_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_blogs_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_explore_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_notifications_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_account_page.dart';

// Web version
import 'package:duma_suites/platforms/Web/screens/lg/web_home_page.dart';
import 'package:duma_suites/platforms/Web/screens/lg/web_blogs_page.dart';
import 'package:duma_suites/platforms/Web/screens/lg/web_explore_page.dart';
import 'package:duma_suites/platforms/Web/screens/lg/web_notifications_page.dart';
import 'package:duma_suites/platforms/Web/screens/lg/web_profile_page.dart';
// Import other necessary pages for both versions

class Screens extends StatefulWidget {
  final String token;

  const Screens({super.key, required this.token});

  @override
  ScreensState createState() => ScreensState();
}

class ScreensState extends State<Screens> {
  int currentIndex = 0;

  List<Widget> get mobilePages => [
        MobileHomePage(token: widget.token),
        const MobileExplorePage(),
        const MobileBlogsPage(),
        const MobileNotificationsPage(),
        const MobileAccountPage(),
      ];

  List<Widget> get webPages => [
        const WebHomePage(),
        const WebExplorerPage(),
        const WebBlogsPage(),
        const WebNotificationsPage(),
        const WebProfilePage(),
      ];

  void _onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> selectedPages;

    if (kIsWeb) {
      selectedPages = webPages;
    } else if (Platform.isAndroid || Platform.isIOS) {
      selectedPages = mobilePages;
    } else {
      selectedPages = [const Center(child: Text('Unsupported platform'))];
    }

    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xFFffffff),
            borderRadius: BorderRadius.circular(16),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(color: Color(0xFF00FF7F)),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search, color: Color(0xFF00FF7F)),
              contentPadding: EdgeInsets.symmetric(vertical: 10.0),
            ),
            style: TextStyle(color: Color(0xff04AA6D)),
            cursorColor: Color(0xff04AA6D),
          ),
        ),
        // Adjust the background color if needed
        backgroundColor: const Color(0xFF00FF7F),
      ),
      // Use the selected page widget
      body: selectedPages[currentIndex],
      bottomNavigationBar: BottomNavigation(
        currentIndex: currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
