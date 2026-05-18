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
  String _sortBy = "Latest";        // Default: Latest
  String _filterType = "All";

  final List<Map<String, dynamic>> allItems = [
    {"title": "Blood Bank Karachi", "type": "Blood Bank", "location": "Karachi", "date": "2025-05-10"},
    {"title": "Pakistan Red Crescent Blood Center", "type": "Blood Bank", "location": "Lahore", "date": "2025-05-08"},
    {"title": "Emergency Blood Request", "type": "Request", "location": "Rawalpindi", "date": "2025-05-12"},
    {"title": "Plasma Donation Camp", "type": "Camp", "location": "Islamabad", "date": "2025-05-11"},
    {"title": "A+ Blood Needed", "type": "Request", "location": "Faisalabad", "date": "2025-05-09"},
    {"title": "Red Crescent Lahore", "type": "Blood Bank", "location": "Lahore", "date": "2025-05-07"},
  ];

  List<Map<String, dynamic>> get filteredItems {
    List<Map<String, dynamic>> items = allItems;

    // Search
    if (_searchQuery.isNotEmpty) {
      items = items.where((item) {
        return item["title"]!.toLowerCase().contains(_searchQuery.toLowerCase()) ||
            item["location"]!.toLowerCase().contains(_searchQuery.toLowerCase());
      }).toList();
    }

    // Filter by Type
    if (_filterType != "All") {
      items = items.where((item) => item["type"] == _filterType).toList();
    }

    // Sort
    if (_sortBy == "Latest") {
      items.sort((a, b) => b["date"].compareTo(a["date"]));
    } else if (_sortBy == "Oldest") {
      items.sort((a, b) => a["date"].compareTo(b["date"]));
    } else if (_sortBy == "Name") {
      items.sort((a, b) => a["title"].compareTo(b["title"]));
    }

    return items;
  }

  void _showSortBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Sort By", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              ListTile(
                title: const Text("Latest"),
                trailing: _sortBy == "Latest" ? const Icon(Icons.check, color: Colors.green) : null,
                onTap: () {
                  setState(() => _sortBy = "Latest");
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Oldest"),
                trailing: _sortBy == "Oldest" ? const Icon(Icons.check, color: Colors.green) : null,
                onTap: () {
                  setState(() => _sortBy = "Oldest");
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Name (A-Z)"),
                trailing: _sortBy == "Name" ? const Icon(Icons.check, color: Colors.green) : null,
                onTap: () {
                  setState(() => _sortBy = "Name");
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Filter By Type", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              ListTile(
                title: const Text("All"),
                trailing: _filterType == "All" ? const Icon(Icons.check, color: Colors.green) : null,
                onTap: () {
                  setState(() => _filterType = "All");
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Blood Bank"),
                trailing: _filterType == "Blood Bank" ? const Icon(Icons.check, color: Colors.green) : null,
                onTap: () {
                  setState(() => _filterType = "Blood Bank");
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Request"),
                trailing: _filterType == "Request" ? const Icon(Icons.check, color: Colors.green) : null,
                onTap: () {
                  setState(() => _filterType = "Request");
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Camp"),
                trailing: _filterType == "Camp" ? const Icon(Icons.check, color: Colors.green) : null,
                onTap: () {
                  setState(() => _filterType = "Camp");
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
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
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: TextField(
              controller: _searchController,
              onChanged: (value) => setState(() => _searchQuery = value),
              decoration: InputDecoration(
                hintText: "Search blood banks, requests, donors...",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchQuery.isNotEmpty
                    ? IconButton(icon: const Icon(Icons.clear), onPressed: () {
                        _searchController.clear();
                        setState(() => _searchQuery = "");
                      })
                    : null,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                fillColor: Colors.grey[100],
              ),
            ),
          ),

          // Filter & Sort Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: _showFilterBottomSheet,
                    icon: const Icon(Icons.filter_list),
                    label: Text("Filter ($_filterType)"),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: primaryMaroon,
                      side: BorderSide(color: primaryMaroon),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: _showSortBottomSheet,
                    icon: const Icon(Icons.sort),
                    label: Text("Sort ($_sortBy)"),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: primaryMaroon,
                      side: BorderSide(color: primaryMaroon),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
              ],
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
                        Text("No results found", style: TextStyle(fontSize: 18)),
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
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: primaryMaroon.withOpacity(0.1),
                            child: Icon(
                              item["type"] == "Blood Bank" ? Icons.local_hospital : Icons.bloodtype,
                              color: primaryMaroon,
                            ),
                          ),
                          title: Text(item["title"], style: const TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text(item["location"]),
                          trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Opened ${item["title"]}")),
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