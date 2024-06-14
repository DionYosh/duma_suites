import 'package:flutter/material.dart';

class MobileFaqPage extends StatelessWidget {
  const MobileFaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FAQ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const <Widget>[
            FaqItem(
              question: 'What is Duma Suites?',
              answer:
                  'Duma Suites is a platform dedicated to providing top-notch services for managing bookings and profiles. We also offer resources related to music and technology.',
            ),
            FaqItem(
              question: 'How do I create a booking?',
              answer:
                  'To create a booking, simply navigate to the booking section of our app, select your preferred dates and options, and confirm your booking.',
            ),
            FaqItem(
              question: 'Can I cancel my booking?',
              answer:
                  'Yes, you can cancel your booking through the app. Go to your bookings, select the booking you wish to cancel, and follow the instructions.',
            ),
            FaqItem(
              question: 'How do I contact support?',
              answer:
                  'You can contact our support team via email at support@dumasuites.com or call us at +1 (234) 567-890.',
            ),
            FaqItem(
              question: 'What services do you offer?',
              answer:
                  'We offer a variety of services including booking management, profile management, and access to resources related to music and technology.',
            ),
            FaqItem(
              question: 'Is there a mobile app?',
              answer:
                  'Yes, Duma Suites has a mobile app available for both iOS and Android. You can download it from the respective app stores.',
            ),
          ],
        ),
      ),
    );
  }
}

class FaqItem extends StatelessWidget {
  final String question;
  final String answer;

  const FaqItem({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ExpansionTile(
        title: Text(
          question,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              answer,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
