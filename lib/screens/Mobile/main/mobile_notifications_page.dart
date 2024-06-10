import 'package:flutter/material.dart';
import 'package:duma_suites/screens/Mobile/details/notification_detail_page.dart';

class MobileNotificationsPage extends StatelessWidget {
  const MobileNotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: NotificationList(),
      ),
    );
  }
}

class NotificationList extends StatelessWidget {
  final List<String> notifications = [
    "You have a new message",
    "Your post got 10 likes",
    "Reminder: Event tomorrow at 2 PM",
    "Congratulations! You've reached a milestone",
    "Daily summary: Check out what you missed",
  ];

  NotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          child: ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.blue, // Customize as needed
              child: Icon(Icons.notifications),
            ),
            title: Text(notifications[index]),
            onTap: () {
              // Handle tapping on a notification item
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationDetailPage(
                      notification: notifications[index]),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
