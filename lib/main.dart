import 'package:flutter/material.dart';
import 'package:duma_suites/core/app_platform.dart';
import 'package:duma_suites/utilities/themes/main_theme.dart';
import 'package:duma_suites/widgets/app_drawer.dart';
// Mobile version
import 'package:duma_suites/platforms/Mobile/main/mobile_about_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_contact_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_events_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_downloads_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_faq_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_music_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_notifications_page.dart';
import 'package:duma_suites/platforms/Mobile/main/mobile_technology_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duma Suites',
      theme: themeData,
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void navigateTo(BuildContext context, String option) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          switch (option) {
            case 'About':
              return const MobileAboutPage();
            case 'Contact':
              return const MobileContactPage();
            case 'Downloads':
              return const MobileDownloadsPage();
            case 'Events':
              return const MobileEventsPage();
            case 'Faq':
              return const MobileFaqPage();
            case 'Music':
              return const MobileMusicPage();
            case 'Notifications':
              return const MobileNotificationsPage();
            case 'Technology':
              return const MobileTechnologyPage();
            default:
              return const Scaffold(
                body: Center(
                  child: Text('Page not found'),
                ),
              );
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Duma Suites')),
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.55,
        child: AppDrawer(
          navigateTo: navigateTo,
        ),
      ),
      body: const Screens(
        token: '',
      ),
    );
  }
}
