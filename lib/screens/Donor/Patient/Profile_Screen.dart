// lib/screens/profile_tab.dart
import 'package:flutter/material.dart';
import '../../../constants.dart';

class ProfileTabContent extends StatelessWidget {
  const ProfileTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader(context),
            _buildStatsCard(),
            const SizedBox(height: 20),
            _buildBloodRequestStatus(),
          ],
        ),
      ),
    );
  }

  // Red Gradient Header with User Info
  Widget _buildHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 50, bottom: 40, left: 20, right: 20),
      decoration: const BoxDecoration(
        color: primaryMaroon, // AppTheme ki jagah primaryMaroon lagaya
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
              const Text(
                "Your Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(Icons.edit, color: Colors.white),
            ],
          ),
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 47,
              backgroundImage: AssetImage(
                "assets/profile.jpg",
              ), // Make sure ye image asset folder mein ho
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            "John Doe",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          // Info Rows
          _buildInfoRow(
            Icons.location_on,
            "Lahore, Punjab, Pakistan",
            hasRefresh: true,
          ),
          _buildInfoRow(Icons.calendar_month, "Not Donated yet"),
          _buildInfoRow(Icons.phone, "+92 3 001234567"),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text, {bool hasRefresh = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 30),
      child: Row(
        children: [
          Icon(icon, color: Colors.white70, size: 18),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
          if (hasRefresh)
            const Icon(Icons.refresh, color: Colors.white70, size: 18),
        ],
      ),
    );
  }

  // Floating White Stats Card
  Widget _buildStatsCard() {
    return Transform.translate(
      offset: const Offset(0, -30),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        // IntrinsicHeight add kiya taake VerticalDivider theek se nazar aaye
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildStatItem("B+", "Blood Group"),
              const VerticalDivider(color: Colors.grey, thickness: 1),
              _buildStatItem("0", "Donated times"),
              const VerticalDivider(color: Colors.grey, thickness: 1),
              _buildStatItem("Active", "Status", isStatus: true),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(String value, String label, {bool isStatus = false}) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: isStatus ? Colors.brown : Colors.brown[800],
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }

  // Bottom Status Box
  Widget _buildBloodRequestStatus() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown.shade800, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          "No Blood requests found for you",
          style: TextStyle(
            color: Colors.brown.shade900,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
