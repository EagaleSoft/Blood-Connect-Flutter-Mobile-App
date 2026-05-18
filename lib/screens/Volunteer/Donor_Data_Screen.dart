// lib/screens/DonorDataScreen.dart
import 'package:flutter/material.dart';
import 'package:blood_donation_app/constants.dart';

class DonorDataScreen extends StatelessWidget {
  const DonorDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Donor Directory"), backgroundColor: primaryMaroon),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search donors...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    leading: CircleAvatar(backgroundColor: primaryMaroon.withOpacity(0.1), child: Text("O+", style: TextStyle(color: primaryMaroon, fontWeight: FontWeight.bold))),
                    title: const Text("Muhammad Ali"),
                    subtitle: const Text("Islamabad • Last Donated: 2 weeks ago"),
                    trailing: const Icon(Icons.phone, color: Colors.green),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}