import 'package:flutter/material.dart';

class MobileSearchPage extends StatefulWidget {
  const MobileSearchPage({super.key});

  @override
  _MobileSearchPageState createState() => _MobileSearchPageState();
}

class _MobileSearchPageState extends State<MobileSearchPage> {
  final TextEditingController _searchController = TextEditingController();
  List<String> searchResults = [];

  @override
  void initState() {
    super.initState();
    // Initialize search results with some dummy data
    searchResults.addAll([
      'Result 1',
      'Result 2',
      'Result 3',
      'Result 4',
      'Result 5',
      'Result 6',
    ]);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    _searchController.dispose();
    super.dispose();
  }

  void search(String query) {
    // Example search logic: filter results based on the query
    List<String> results = [];
    if (query.isNotEmpty) {
      results = searchResults
          .where((result) => result.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } else {
      // If query is empty, show all results
      results.addAll(searchResults);
    }
    setState(() {
      searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Results'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    search(_searchController.text);
                  },
                ),
              ),
              onSubmitted: (value) {
                search(value);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(searchResults[index]),
                  onTap: () {
                    // Handle tapping on a search result
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
