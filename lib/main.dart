import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:duma_suites/main/screens.dart';
import 'package:duma_suites/main/theme_data.dart';
// Mobile version
// import 'package:duma_suites/screens/Mobile/main/mobile_about_page.dart';
// import 'package:duma_suites/screens/Mobile/main/mobile_contact_page.dart';
// import 'package:duma_suites/screens/Mobile/main/mobile_events_page.dart';
// import 'package:duma_suites/screens/Mobile/main/mobile_downloads_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duma Suites',
      // Use the imported theme data
      theme: themeData,
      // Load main page class here
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

  @override
  Widget build(BuildContext context) {
    const userName = 'Dionysius Yosh';
    const userAvatar = 'assets/images/female1280.png';

    void navigateTo(String option) {
      // Implement your navigation logic based on the option
      if (kDebugMode) {
        print("Navigate to: $option");
      }
    }

    void handleLogout() {
      // Implement your logout logic
      if (kDebugMode) {
        print("Logging out...");
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Duma Suites'),
      ),
      endDrawer: SizedBox(
        // Adjust the width as needed
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
                  navigateTo('about');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('Contact'),
                onTap: () {
                  navigateTo('contact');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.file_download),
                title: const Text('Downloads'),
                onTap: () {
                  navigateTo('downloads');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.event),
                title: const Text('Events'),
                onTap: () {
                  navigateTo('events');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.question_answer),
                title: const Text('FAQ'),
                onTap: () {
                  navigateTo('faq');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.library_music_rounded),
                title: const Text('Music'),
                onTap: () {
                  navigateTo('Music');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.computer),
                title: const Text('Technology'),
                onTap: () {
                  navigateTo('team');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Log Out'),
                onTap: () {
                  handleLogout();
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: const Screens(
        token: '',
      ), // Use the ScreenSizes widget here
    );
  }
}