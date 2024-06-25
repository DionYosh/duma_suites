import 'package:flutter/material.dart';

class MobileBlogsPage extends StatefulWidget {
  const MobileBlogsPage({super.key});

  @override
  MobileBlogsPageState createState() => MobileBlogsPageState();
}

class MobileBlogsPageState extends State<MobileBlogsPage> {
  final List<Map<String, String>> _posts = [
    {
      'title': 'First Post',
      'description': 'This is the description of the first post.',
      'slug': 'first-post',
      'content': 'This is the content of the first post.',
      'avatarUrl': 'assets/images/female1280.png'
    },
    {
      'title': 'Second Post',
      'description': 'This is the description of the second post.',
      'slug': 'second-post',
      'content': 'This is the content of the second post.',
      'avatarUrl': 'assets/images/female1280.png'
    },
    {
      'title': 'Third Post',
      'description': 'This is the description of the third post.',
      'slug': 'third-post',
      'content': 'This is the content of the third post.',
      'avatarUrl': 'assets/images/female1280.png'
    },
    {
      'title': 'Fourth Post',
      'description': 'This is the description of the fourth post.',
      'slug': 'fourth-post',
      'content': 'This is the content of the fourth post.',
      'avatarUrl': 'assets/images/female1280.png'
    },
    {
      'title': 'Fifth Post',
      'description': 'This is the description of the fifth post.',
      'slug': 'fifth-post',
      'content': 'This is the content of the fifth post.',
      'avatarUrl': 'assets/images/female1280.png'
    },
  ];

  final _formKey = GlobalKey<FormState>();
  bool _isFormVisible = false;
  String _newTitle = '';
  String _newDescription = '';
  String _newSlug = '';
  String _newContent = '';
  String _newAvatarUrl = '';

  void _toggleFormVisibility() {
    setState(() {
      _isFormVisible = !_isFormVisible;
    });
  }

  void _addPost() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        _posts.add({
          'title': _newTitle,
          'description': _newDescription,
          'slug': _newSlug,
          'content': _newContent,
          'avatarUrl': _newAvatarUrl,
        });
        _isFormVisible = false;
      });
      _newTitle = '';
      _newDescription = '';
      _newSlug = '';
      _newContent = '';
      _newAvatarUrl = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ElevatedButton(
              iconAlignment: IconAlignment.end,
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffffffff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                minimumSize: const Size(16, 8),
              ),
              child: Row(
                children: [
                  const Text(
                    'Create Post',
                    style: TextStyle(
                      color: Color(0xff4B0082),
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    iconSize: 30,
                    focusColor: const Color(0xff4B0082),
                    color: const Color(0xff4B0082),
                    icon: Icon(_isFormVisible ? Icons.close : Icons.add),
                    onPressed: _toggleFormVisibility,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if (_isFormVisible)
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Center(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 36.0, vertical: 60.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Title',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a title';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _newTitle = value ?? '';
                              },
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Description',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a description';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _newDescription = value ?? '';
                              },
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Slug',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a slug';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _newSlug = value ?? '';
                              },
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Content',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the content';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _newContent = value ?? '';
                              },
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Avatar URL',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the avatar URL';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _newAvatarUrl = value ?? '';
                              },
                            ),
                            const SizedBox(height: 16),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff00FA9A),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                minimumSize: const Size(310, 50),
                              ),
                              onPressed: _addPost,
                              child: const Text(
                                'Create Blog Post',
                                style: TextStyle(
                                    color: Color(0xff4B0082),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            Expanded(
              child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  final post = _posts[index];
                  return Card(
                    margin: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                            post['avatarUrl'] ?? 'assets/images/default.png',
                          ),
                        ),
                        title: Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text(post['title'] ?? 'No Title'),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(post['description'] ?? 'No Description'),
                            Text('Slug: ${post['slug']}'),
                            Text('Content: ${post['content']}'),
                          ],
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                        onTap: () {
                          // Define the action when a post is tapped
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('You tapped on ${post['title']}'),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
