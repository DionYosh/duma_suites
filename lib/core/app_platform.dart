import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;

// Mobile version
import 'package:duma_suites/widgets/app_bottom_navigation.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_about_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_account_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_auth_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_blogs_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_contact_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_downloads_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_events_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_explore_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_faq_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_home_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_music_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_notifications_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_profile_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_search_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_technology_page.dart';

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
        const MobileSearchPage(),
        const MobileBlogsPage(),
        const MobileAccountPage(),
        const MobileAboutPage(),
        const MobileAuthPage(),
        const MobileContactPage(),
        const MobileDownloadsPage(),
        const MobileEventsPage(),
        const MobileFaqPage(),
        const MobileMusicPage(),
        const MobileNotificationsPage(),
        const MobileProfilePage(),
        const MobileTechnologyPage(),
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

    if (Platform.isAndroid || Platform.isIOS) {
      selectedPages = mobilePages;
    } else if (kIsWeb) {
      selectedPages = webPages;
    } else {
      selectedPages = [const Center(child: Text('Unsupported platform'))];
    }

    return Scaffold(
      // appBar: AppBar(),
      // Use the selected page widget
      body: selectedPages[currentIndex],
      bottomNavigationBar: BottomNavigation(
        currentIndex: currentIndex,
        onTap: _onTap,
      ),
    );
  }
}
