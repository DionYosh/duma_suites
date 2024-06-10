import 'package:flutter/material.dart';
// Mobile version
import 'package:duma_suites/widgets/bottom_navigation.dart';
import 'package:duma_suites/screens/Mobile/main/mobile_home_page.dart';
import 'package:duma_suites/screens/Mobile/main/mobile_blogs_page.dart';
import 'package:duma_suites/screens/Mobile/main/mobile_explore_page.dart';
import 'package:duma_suites/screens/Mobile/main/mobile_notifications_page.dart';
import 'package:duma_suites/screens/Mobile/main/mobile_account_page.dart';

// Web version
import 'package:duma_suites/screens/Web/main/web_home_page.dart';
import 'package:duma_suites/screens/Web/main/web_blogs_page.dart';
import 'package:duma_suites/screens/Web/main/web_explore_page.dart';
import 'package:duma_suites/screens/Web/main/web_notifications_page.dart';
import 'package:duma_suites/screens/Web/main/web_profile_page.dart';
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
        const MobileAccountPage(isUserAuthenticated: false,),
      ];

  final List<Widget> webPages = [
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
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    final List<Widget> selectedPages =
        screenWidth < 600 ? mobilePages : webPages;

    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(color:  Color(0xff04AA6D)),
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search, color:  Color(0xff04AA6D)),
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
            style: TextStyle(color:  Color(0xff04AA6D)),
            cursorColor:  Color(0xff04AA6D),
          ),
        ),
        // Adjust the background color if needed
        backgroundColor:  const Color(0xff04AA6D),
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
