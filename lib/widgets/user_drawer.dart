import 'package:flutter/material.dart';

class UserDrawer extends StatelessWidget {
  final String userName;
  final String userAvatar;
  final Map<String, VoidCallback> navigationOptions;
  final VoidCallback onLogout;

  const UserDrawer({
    super.key,
    required this.userName,
    required this.userAvatar,
    required this.navigationOptions,
    required this.onLogout,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(userName),
            accountEmail: const Text('user@example.com'), // You can change this to the user's email or remove it
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(userAvatar),
            ),
          ),
          ...navigationOptions.entries.map((entry) {
            return ListTile(
              title: Text(entry.key),
              onTap: entry.value,
            );
          }),
          ListTile(
            title: const Text('Logout'),
            onTap: onLogout,
          ),
        ],
      ),
    );
  }
}