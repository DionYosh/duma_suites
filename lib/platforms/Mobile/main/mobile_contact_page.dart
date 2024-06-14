import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import for launching URLs

class MobileContactPage extends StatelessWidget {
  const MobileContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(children: [
                const SizedBox(height: 10.0),
                // Contact Information
                const Text('Email:',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                InkWell(
                  child: const Text(
                    'contact@yourcompany.com',
                    style: TextStyle(color: Colors.blue),
                  ),
                  onTap: () => _launchUrl(
                      'mailto:contact@dumasuites.com'), // Launch email app
                ),
                const SizedBox(height: 10.0),
                const Text('Phone:',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const Text(
                    '+1 (555) 555-5555'), // Replace with your phone number
                const SizedBox(height: 10.0),
                // Address (Optional)
                const Text('Address:',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const Text(
                    '123 Main Street, Anytown, CA 12345'), // Replace with your address
                // Social Media Links (Optional)
                const SizedBox(height: 10.0),
              ]),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.facebook),
                      onPressed: () => _launchUrl(
                          'https://www.facebook.com/yourcompany'), // Launch Facebook page
                    ),
                    IconButton(
                      icon: const Icon(Icons.youtube_searched_for_sharp),
                      onPressed: () => _launchUrl(
                          'https://twitter.com/yourcompany'), // Launch Twitter page
                    ),
                    // Add more social media icons as needed
                  ],
                ),
              ),
              // Contact Form
              const SizedBox(height: 20.0),
              const Text(
                'Or, you can fill out the form below to contact us:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Message',
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 3,
                      ),
                      const SizedBox(height: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          // Handle form submission
                        },
                        child: const Text('Submit'),
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

  // Function to launch URLs with error handling
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await canLaunch(uri.toString())) {
      throw 'Could not launch $url';
    } else {
      await launch(uri.toString());
    }
  }
}
