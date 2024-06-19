import 'package:flutter/material.dart';

class MobileAboutPage extends StatelessWidget {
  const MobileAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'About Duma Suites',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Welcome to Duma Suites! We are dedicated to providing you with the best service. '
                'Our application offers a seamless experience for managing your bookings and profiles. '
                'Additionally, we have built this application system for showcasing and '
                'downloading resources related to Services we offer.',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                  child: Column(
                children: [
                  Text(
                    'Our Team',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Welcome to Duma Suites! We are dedicated to providing you with the best service. '
                    'Our application offers a seamless experience for managing your bookings and profiles. '
                    'Additionally, we have built this application system for showcasing and '
                    'downloading resources related to Services we offer.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              )),
              SizedBox(height: 8.0),
              TeamMembersColumn(),
              SizedBox(height: 16.0),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Contact Us',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Email: support@dumasuites.com',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Phone: +1 (234) 567-890',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
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

class TeamMembersColumn extends StatelessWidget {
  const TeamMembersColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        _TeamMemberCard(
          name: 'John Doe',
          role: 'CEO',
          responsibilities: [
            'Overseeing company strategy',
            'Ensuring overall company success',
            'Leading executive team',
          ],
          avatarUrl: 'https://via.placeholder.com/150', // Placeholder image URL
        ),
        _TeamMemberCard(
          name: 'Jane Smith',
          role: 'CTO',
          responsibilities: [
            'Leading technology strategy',
            'Managing tech teams',
            'Overseeing software development',
          ],
          avatarUrl: 'https://via.placeholder.com/150', // Placeholder image URL
        ),
        _TeamMemberCard(
          name: 'Emily Johnson',
          role: 'Lead Developer',
          responsibilities: [
            'Leading the development team',
            'Designing software architecture',
            'Implementing core functionalities',
          ],
          avatarUrl: 'https://via.placeholder.com/150', // Placeholder image URL
        ),
        _TeamMemberCard(
          name: 'Michael Brown',
          role: 'UX Designer',
          responsibilities: [
            'Creating user-friendly interfaces',
            'Conducting user research',
            'Designing visual elements and prototypes',
          ],
          avatarUrl: 'https://via.placeholder.com/150', // Placeholder image URL
        ),
        _TeamMemberCard(
          name: 'Sarah Davis',
          role: 'Marketing Manager',
          responsibilities: [
            'Developing marketing strategies',
            'Managing social media campaigns',
            'Coordinating product launches',
          ],
          avatarUrl: 'https://via.placeholder.com/150', // Placeholder image URL
        ),
      ],
    );
  }
}

class _TeamMemberCard extends StatelessWidget {
  final String name;
  final String role;
  final List<String> responsibilities;
  final String avatarUrl;

  const _TeamMemberCard({
    required this.name,
    required this.role,
    required this.responsibilities,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(avatarUrl),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    role,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  ...responsibilities.map((responsibility) => Text(
                        '- $responsibility',
                        style: const TextStyle(fontSize: 14.0),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
