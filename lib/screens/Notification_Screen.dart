// lib/screens/notifications_screen.dart
import 'package:flutter/material.dart';
import 'package:blood_donation_app/constants.dart';
class NotificationsScreen extends StatelessWidget {
  static const String routeName = '/notifications';

  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: primaryMaroon),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          ListTile(
            leading: Icon(Icons.bloodtype, color: Colors.red),
            title: Text("Blood Request Alert"),
            subtitle: Text("A+ blood needed urgently in Dharan"),
            trailing: Text("2m ago"),
          ),
          ListTile(
            leading: Icon(Icons.campaign, color: Colors.orange),
            title: Text("Donation Camp"),
            subtitle: Text("Blood donation camp tomorrow at 10 AM"),
            trailing: Text("1h ago"),
          ),
          ListTile(
            leading: Icon(Icons.verified, color: Colors.green),
            title: Text("Certificate Ready"),
            subtitle: Text("Your donation certificate is ready"),
            trailing: Text("Yesterday"),
          ),
        ],
      ),
    );
  }
}