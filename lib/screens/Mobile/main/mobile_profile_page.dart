import 'package:flutter/material.dart';

class MobileProfilePage extends StatelessWidget {
  const MobileProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20.0),
        _buildProfileHeader(context),
        const SizedBox(height: 20.0),
        _buildInfoRow(),
        const SizedBox(height: 20.0),
        _buildListTile(Icons.info, 'Bio', 'Add your bio here'),
        _buildListTile(Icons.link, 'Social Media Links', 'Add your links here'),
        // ... add remaining ListTile widgets here
        const SizedBox(height: 20.0),
      ],
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage('assets/images/female1280.png'),
        ),
        const SizedBox(width: 20.0), // Spacing between avatar and content
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'John Doe',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5.0),
              const Text(
                'Flutter Developer',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                  height: 10.0), // Spacing between user info and edit button
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/editProfile'),
                child: const Text('Edit'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildInfoColumn('Posts', '123'),
        _buildInfoColumn('Followers', '456'),
        _buildInfoColumn('Following', '789'),
      ],
    );
  }

  Widget _buildInfoColumn(String title, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 16.0, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildListTile(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(subtitle),
      onTap: () {
        // Implement functionality here
      },
    );
  }
}
