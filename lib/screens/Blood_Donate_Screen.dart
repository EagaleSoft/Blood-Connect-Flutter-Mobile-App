// lib/screens/blood_donate_screen.dart
import 'package:flutter/material.dart';
import 'package:blood_donation_app/constants.dart';

class BloodDonateScreen extends StatelessWidget {
  static const String routeName = '/blood_donate';

  const BloodDonateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Blood Donate"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(color: primaryMaroon),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(Icons.favorite, size: 100, color: Color(0xFF6B0000)),
            ),
            const SizedBox(height: 20),

            const Text(
              "Become a Blood Donor",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              "Your one donation can save up to 3 lives.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            _buildInfoCard("Eligibility", "Age 18-60 | Weight > 50kg | Good Health"),
            const SizedBox(height: 16),
            _buildInfoCard("Process", "Registration → Medical Checkup → Blood Donation → Refreshment"),
            const SizedBox(height: 16),
            _buildInfoCard("Benefits", "Free Health Checkup + Certificate + Recognition"),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Finding nearby donation camps..."),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryMaroon,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text(
                  "FIND DONATION CAMP",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String subtitle) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Icon(Icons.check_circle, color: primaryMaroon, size: 32),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
      ),
    );
  }
}