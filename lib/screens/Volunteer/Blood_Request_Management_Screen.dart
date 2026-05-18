// lib/screens/BloodRequestManagementScreen.dart
import 'package:flutter/material.dart';
import 'package:blood_donation_app/constants.dart';

class BloodRequestManagementScreen extends StatelessWidget {
  const BloodRequestManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Blood Request Management"), backgroundColor: primaryMaroon),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: const CircleAvatar(child: Icon(Icons.bloodtype, color: Colors.red)),
              title: const Text("A+ Blood Required - 2 Units"),
              subtitle: const Text("Rawalpindi • 3 hours ago"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(icon: const Icon(Icons.check, color: Colors.green), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.close, color: Colors.red), onPressed: () {}),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}