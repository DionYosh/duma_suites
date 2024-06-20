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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const SizedBox(height: 10.0),
                // Contact Information
                const Center(
                  child: Text(
                    'Email:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: InkWell(
                    child: const Text(
                      'contact@yourcompany.com',
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () => launchUrl(
                      'mailto:contact@dumasuites.com',
                    ), // Launch email app
                  ),
                ),
                const SizedBox(height: 10.0),
                const Center(
                  child: Text(
                    'Phone:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Center(
                  child: Text(
                    '+1 (555) 555-5555',
                  ),
                ), // Replace with your phone number
                const SizedBox(height: 10.0),
                // Address (Optional)
                const Center(
                  child: Text(
                    'Address:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  '123 Main Street, Any town, CA 12345',
                ), // Replace with your address
                // Social Media Links (Optional)
                const SizedBox(height: 10.0),
              ],
            ),

            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.facebook,
                      size: 32,
                      weight: 20,
                    ),
                    onPressed: () => launchUrl(
                        'https://www.facebook.com/yourcompany'), // Launch Facebook page
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.tiktok,
                      size: 32,
                    ),
                    onPressed: () => launchUrl(
                        'https://twitter.com/yourcompany'), // Launch Twitter page
                  ),
                  // Add more social media icons as needed
                ],
              ),
            ),
            // Contact Form
            const SizedBox(height: 20.0),
            const Center(
              child: Text(
                'You can contact us below :',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Card(
              elevation: 16,
              shadowColor: const Color(0xff4B0082),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 60.0,
                ),
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
                        labelText: 'Subject',
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
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff00FA9A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        minimumSize: const Size(150, 50),
                      ),
                      child: const Text(
                        'Submit Message',
                        style: TextStyle(
                          color: Color(0xff4B0082),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to launch URLs with error handling
  Future<void> launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launch(uri.toString())) {
      throw 'Could not launch $url';
    } else {
      await launch(uri.toString());
    }
  }
}
