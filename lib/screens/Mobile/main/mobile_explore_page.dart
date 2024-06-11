import 'package:flutter/material.dart';

class MobileExplorePage extends StatelessWidget {
  const MobileExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> exploreItems = [
      'Discover new places',
      'Find interesting articles',
      'Explore popular destinations',
      'Check out trending topics',
      'Browse recommended content',
      'Join community events'
    ];

    return Scaffold(
        body: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: exploreItems.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(10.0),
              child: ListTile(
                leading:
                    Icon(Icons.explore, color: Theme.of(context).primaryColor),
                title: Text(exploreItems[index]),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  // Define the action when an item is tapped
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('You tapped on ${exploreItems[index]}'),
                    ),
                  );
                },
              ),
            );
          },
        ));
  }
}
