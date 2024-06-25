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
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Unleash your musical creativity and conquer tech challenges. '
                'We offer a treasure trove of music resources – tracks, albums, '
                'playlists – all accessible at your fingertips. '
                'Plus, explore cutting-edge tech tools, in-depth tutorials, and comprehensive guides.'
                ' We\'re here to elevate your music and tech experience',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff4B0082),
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Our seamless booking and profile management system ensures '
                'you can easily schedule your sessions and keep track of your activities. '
                'We also offer comprehensive support and documentation to help you make the most of our services.',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xff4B0082),
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
        Center(
          child: Text(
            'Features',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
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
        const Center(
          child: Text(
            'Get Started with Duma Suites',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        ElevatedButton(
          style: ButtonStyle(),
          onPressed: () {
            // Handle get started button press
          },
          child: const Text('Get Started'),
        ),
      ],
    );
  }
}
