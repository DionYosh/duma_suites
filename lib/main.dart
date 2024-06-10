import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:duma_suites/main/screens.dart';
import 'package:duma_suites/main/theme_data.dart';
// Mobile version
import 'package:duma_suites/screens/Mobile/main/mobile_about_page.dart';
import 'package:duma_suites/screens/Mobile/main/mobile_contact_page.dart';
import 'package:duma_suites/screens/Mobile/main/mobile_events_page.dart';
import 'package:duma_suites/screens/Mobile/main/mobile_downloads_page.dart';

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
    if (kDebugMode) {
      print("Navigate to: $option");
    }
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

  void handleLogout() {
    if (kDebugMode) {
      print("Logging out...");
    }
  }

  @override
  Widget build(BuildContext context) {
    const userName = 'Dionysius Yosh';
    const userAvatar = 'assets/images/female1280.png';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Duma Suites'),
      ),
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(userAvatar),
                    ),
                    SizedBox(height: 10),
                    Text(
                      userName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.info_outline),
                title: const Text('About'),
                onTap: () {
                  Navigator.pop(context);
                  navigateTo(context, 'About');
                },
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('Contact'),
                onTap: () {
                  Navigator.pop(context);
                  navigateTo(context, 'Contact');
                },
              ),
              ListTile(
                leading: const Icon(Icons.file_download),
                title: const Text('Downloads'),
                onTap: () {
                  Navigator.pop(context);
                  navigateTo(context, 'Downloads');
                },
              ),
              ListTile(
                leading: const Icon(Icons.event),
                title: const Text('Events'),
                onTap: () {
                  Navigator.pop(context);
                  navigateTo(context, 'Events');
                },
              ),
              ListTile(
                leading: const Icon(Icons.question_answer),
                title: const Text('FAQ'),
                onTap: () {
                  Navigator.pop(context);
                  navigateTo(context, 'faq');
                },
              ),
              ListTile(
                leading: const Icon(Icons.library_music_rounded),
                title: const Text('Music'),
                onTap: () {
                  Navigator.pop(context);
                  navigateTo(context, 'Music');
                },
              ),
              ListTile(
                leading: const Icon(Icons.computer),
                title: const Text('Technology'),
                onTap: () {
                  Navigator.pop(context);
                  navigateTo(context, 'team');
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Log Out'),
                onTap: () {
                  Navigator.pop(context);
                  handleLogout();
                },
              ),
            ],
          ),
        ),
      ),
      body: const Screens(
        token: '',
      ),
    );
  }
}
