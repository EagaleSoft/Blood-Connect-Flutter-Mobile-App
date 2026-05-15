import 'package:flutter/material.dart';
import 'package:blood_donation_app/constants.dart';

class VolunteerDashboardScreen extends StatefulWidget {
  const VolunteerDashboardScreen({super.key});

  @override
  State<VolunteerDashboardScreen> createState() => _VolunteerDashboardScreenState();
}

class _VolunteerDashboardScreenState extends State<VolunteerDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Volunteer Dashboard"),
        backgroundColor: primaryMaroon,
        foregroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),

      // ==================== DRAWER ====================
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 25),
              decoration: BoxDecoration(color: primaryMaroon),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.groups_rounded, size: 55, color: Color(0xFF6B0000)),
                  ),
                  const SizedBox(height: 12),
                  const Text("Welcome,", style: TextStyle(color: Colors.white, fontSize: 18)),
                  const Text(
                    "Volunteer",
                    style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 8),
                children: [
                  _buildDrawerItem(Icons.dashboard, "Dashboard", onTap: () => Navigator.pop(context)),
                  _buildDrawerItem(Icons.bloodtype, "Blood Request Management", onTap: () {}),
                  _buildDrawerItem(Icons.people, "Donor Data", onTap: () {}),
                  _buildDrawerItem(Icons.card_giftcard, "Digital Certificate", onTap: () {}),
                  _buildDrawerItem(Icons.notifications, "Notifications", onTap: () {}),
                  _buildDrawerItem(Icons.person, "My Profile", onTap: () {}),
                  _buildDrawerItem(Icons.settings, "Settings", onTap: () {}),
                  _buildDrawerItem(Icons.help_outline, "Help & Support", onTap: () {}),

                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.logout, color: Colors.red),
                    title: const Text("Logout", style: TextStyle(color: Colors.red)),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome
              const Text("Welcome Back,", style: TextStyle(fontSize: 16, color: Colors.grey)),
              const Text(
                "Volunteer Name",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),

              // Stats Row
              Row(
                children: [
                  _buildStatCard("Pending\nRequests", "18", Colors.orange),
                  const SizedBox(width: 12),
                  _buildStatCard("Donors\nHelped", "64", Colors.green),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  _buildStatCard("This Month", "12", primaryMaroon),
                  const SizedBox(width: 12),
                  _buildStatCard("Response\nRate", "96%", Colors.blue),
                ],
              ),

              const SizedBox(height: 32),

              // Quick Access
              const Text("Quick Access", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),

              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.4,
                children: [
                  _buildQuickCard(Icons.list_alt, "Manage\nRequests", Colors.red, () {}),
                  _buildQuickCard(Icons.people_outline, "Donor\nDirectory", Colors.indigo, () {}),
                  _buildQuickCard(Icons.card_giftcard, "Issue\nCertificate", Colors.purple, () {}),
                  _buildQuickCard(Icons.notifications_active, "Notifications", Colors.orange, () {}),
                ],
              ),

              const SizedBox(height: 32),

              // Recent Activity
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Recent Activity", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  TextButton(onPressed: () {}, child: const Text("View All")),
                ],
              ),
              const SizedBox(height: 12),

              _buildRecentActivity("A+ Blood Request", "Rawalpindi", "2 hours ago"),
              _buildRecentActivity("O- Plasma Needed", "Islamabad", "Yesterday"),
              _buildRecentActivity("B+ Donor Verified", "Lahore", "3 days ago"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String value, Color color) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 14, color: Colors.grey[700])),
            const SizedBox(height: 8),
            Text(value, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: color)),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickCard(IconData icon, String title, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 12),
            Text(title, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentActivity(String title, String location, String time) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: const Icon(Icons.bloodtype, color: Colors.red, size: 32),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("$location • $time"),
        trailing: const Icon(Icons.arrow_forward_ios, size: 18),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, {VoidCallback? onTap}) {
    return ListTile(
      leading: Icon(icon, color: primaryMaroon),
      title: Text(title),
      onTap: onTap ?? () => Navigator.pop(context),
    );
  }
}