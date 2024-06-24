import 'package:flutter/material.dart';
import 'package:duma_suites/services/app_auth_service.dart';

class AppDrawer extends StatelessWidget {
  final void Function(BuildContext, String) navigateTo;
  final AuthService authService = AuthService();

  AppDrawer({
    required this.navigateTo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const userName = 'Dionysius Yosh';
    const userAvatar = 'assets/images/female1280.png';

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff00FA9A),
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
                    color: Color(0xff4B0082),
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.info_outline,
            ),
            title: const Text(
              'About',
            ),
            onTap: () {
              Navigator.pop(context);
              navigateTo(context, 'About');
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text(
              'Contact',
            ),
            onTap: () {
              Navigator.pop(context);
              navigateTo(context, 'Contact');
            },
          ),
          ListTile(
            leading: const Icon(Icons.file_download),
            title: const Text(
              'Downloads',
            ),
            onTap: () {
              Navigator.pop(context);
              navigateTo(context, 'Downloads');
            },
          ),
          ListTile(
            leading: const Icon(Icons.event),
            title: const Text(
              'Events',
            ),
            onTap: () {
              Navigator.pop(context);
              navigateTo(context, 'Events');
            },
          ),
          ListTile(
            leading: const Icon(Icons.question_answer),
            title: const Text(
              'FAQ',
            ),
            onTap: () {
              Navigator.pop(context);
              navigateTo(context, 'Faq');
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_music_rounded),
            title: const Text(
              'Music',
            ),
            onTap: () {
              Navigator.pop(context);
              navigateTo(context, 'Music');
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text(
              'Notifications',
            ),
            onTap: () {
              Navigator.pop(context);
              navigateTo(context, 'Notifications');
            },
          ),
          ListTile(
            leading: const Icon(Icons.computer),
            title: const Text(
              'Technology',
            ),
            onTap: () {
              Navigator.pop(context);
              navigateTo(context, 'Technology');
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(
              'Log Out',
            ),
            onTap: () {
              Navigator.pop(context);
              authService.handleLogout();
            },
          ),
        ],
      ),
    );
  }
}
