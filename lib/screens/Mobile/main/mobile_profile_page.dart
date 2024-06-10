import 'package:flutter/material.dart';

class MobileProfilePage extends StatelessWidget {
  const MobileProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('assets/images/female1280.png'),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'John Doe',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      child: const Text('Edit Profile'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/editProfile');
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildInfoColumn('Posts', '123'),
                    _buildInfoColumn('Followers', '456'),
                    _buildInfoColumn('Following', '789'),
                  ],
                ),
                const SizedBox(height: 20),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text('Bio'),
                  subtitle: const Text('Add your bio here'),
                  onTap: () {
                    // Implement bio editing functionality
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.link),
                  title: const Text('Social Media Links'),
                  subtitle: const Text('Add your social media links here'),
                  onTap: () {
                    // Implement social media links editing functionality
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.contact_mail),
                  title: const Text('Contact Information'),
                  subtitle: const Text('Add your contact information here'),
                  onTap: () {
                    // Implement contact information editing functionality
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.favorite),
                  title: const Text('Interests'),
                  subtitle: const Text('Add your interests here'),
                  onTap: () {
                    // Implement interests editing functionality
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.location_on),
                  title: const Text('Location'),
                  subtitle: const Text('Add your location here'),
                  onTap: () {
                    // Implement location editing functionality
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.privacy_tip),
                  title: const Text('Privacy Settings'),
                  subtitle: const Text('Adjust your privacy settings'),
                  onTap: () {
                    // Implement privacy settings functionality
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.edit),
                  title: const Text('Edit Profile Picture'),
                  onTap: () {
                    // Implement profile picture editing functionality
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.history),
                  title: const Text('Activity Feed'),
                  subtitle: const Text('View your recent activity'),
                  onTap: () {
                    // Implement activity feed functionality
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.person_add),
                  title: const Text('Follow/Unfollow'),
                  subtitle: const Text('Follow or unfollow users'),
                  onTap: () {
                    // Implement follow/unfollow functionality
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.color_lens),
                  title: const Text('Customization Options'),
                  subtitle: const Text('Customize your profile'),
                  onTap: () {
                    // Implement customization options functionality
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoColumn(String title, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
