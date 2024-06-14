import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  final String token;

  const MobileHomePage({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Welcome to Duma Suites!',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'At Duma Suites, we are committed to providing you with top-notch services to enhance your experience in both music and technology. Our platform offers an extensive library of music resources, including tracks, albums, and playlists, all at your fingertips. In addition, we provide cutting-edge technology resources, from the latest software tools to in-depth tutorials and guides.',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Our seamless booking and profile management system ensures you can easily schedule your sessions and keep track of your activities. We also offer comprehensive support and documentation to help you make the most of our services.',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 24.0),
              const FeatureSection(),
              const SizedBox(height: 24.0),
              const CallToActionSection(),
              const SizedBox(height: 24.0),
              Center(
                child: Text(
                  'Token: $token',
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Features',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FeatureCard(
              icon: Icons.music_note,
              title: 'Music Resources',
              description: 'Access a wide variety of music resources.',
            ),
            FeatureCard(
              icon: Icons.computer,
              title: 'Tech Resources',
              description: 'Download the latest tech resources.',
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FeatureCard(
              icon: Icons.book,
              title: 'Documentation',
              description: 'Comprehensive API documentation.',
            ),
            FeatureCard(
              icon: Icons.support,
              title: 'Support',
              description: 'Get help and support from our team.',
            ),
          ],
        ),
      ],
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureCard({
    required this.icon,
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Icon(
                icon,
                size: 40.0,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(height: 8.0),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                description,
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CallToActionSection extends StatelessWidget {
  const CallToActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          'Get Started with Duma Suites',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: () {
            // Handle get started button press
          },
          child: const Text('Get Started'),
        ),
      ],
    );
  }
}
