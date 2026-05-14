import 'package:flutter/material.dart';
import 'package:blood_donation_app/constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";

  // Sample data - you can replace with real data later
  final List<Map<String, dynamic>> allItems = [
    {
      "title": "Blood Bank Karachi",
      "type": "Blood Bank",
      "location": "Karachi",
    },
    {
      "title": "Pakistan Red Crescent Blood Center",
      "type": "Blood Bank",
      "location": "Lahore",
    },
    {
      "title": "Emergency Blood Request",
      "type": "Request",
      "location": "Rawalpindi",
    },
    {"title": "Plasma Donation Camp", "type": "Camp", "location": "Islamabad"},
    {"title": "A+ Blood Needed", "type": "Request", "location": "Faisalabad"},
  ];

  List<Map<String, dynamic>> get filteredItems {
    if (_searchQuery.isEmpty) return allItems;
    return allItems.where((item) {
      return item["title"]!.toLowerCase().contains(
            _searchQuery.toLowerCase(),
          ) ||
          item["location"]!.toLowerCase().contains(_searchQuery.toLowerCase());
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        backgroundColor: primaryMaroon,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() => _searchQuery = value);
              },
              decoration: InputDecoration(
                hintText: "Search blood banks, requests, donors...",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          setState(() => _searchQuery = "");
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
            ),
          ),

          // Results
          Expanded(
            child: filteredItems.isEmpty
                ? const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.search_off, size: 80, color: Colors.grey),
                        SizedBox(height: 16),
                        Text(
                          "No results found",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      final item = filteredItems[index];
                      return Card(
                        margin: const EdgeInsets.only(bottom: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: primaryMaroon.withOpacity(0.1),
                            child: Icon(
                              item["type"] == "Blood Bank"
                                  ? Icons.local_hospital
                                  : Icons.bloodtype,
                              color: primaryMaroon,
                            ),
                          ),
                          title: Text(
                            item["title"],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(item["location"]),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            size: 18,
                          ),
                          onTap: () {
                            // TODO: Navigate to detail screen
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Opened ${item["title"]}"),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
