import 'package:flutter/material.dart';
import 'package:blood_donation_app/constants.dart';

class VolunteerDashboardScreen extends StatefulWidget {
  const VolunteerDashboardScreen({super.key});

  @override
  State<VolunteerDashboardScreen> createState() => _VolunteerDashboardScreenState();
}

class _VolunteerDashboardScreenState extends State<VolunteerDashboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("Volunteer Dashboard"),
        backgroundColor: primaryMaroon,
        centerTitle: true,
        foregroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        actions: [
          IconButton(
            icon: const Badge(label: Text("3"), child: Icon(Icons.notifications)),
            onPressed: () {},
          ),
        ],
      ),

      drawer: _buildDrawer(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 35, color: primaryMaroon),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Welcome Back,", style: TextStyle(fontSize: 16, color: Colors.grey)),
                      Text("Tuba", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(Icons.location_on, size: 18, color: Colors.grey),
                  const SizedBox(width: 4),
                  const Text("Rawalpindi, Punjab", style: TextStyle(color: Colors.grey)),
                  const Spacer(),
                  TextButton.icon(onPressed: () {}, icon: const Icon(Icons.refresh, size: 18), label: const Text("Refresh")),
                ],
              ),

              const SizedBox(height: 24),

              // Consistent Stat Cards (All same size & theme)
              Row(
                children: [
                  _buildStatCard("Active\nRequests", "12"),
                  const SizedBox(width: 12),
                  _buildStatCard("Urgent", "3"),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  _buildStatCard("Donors\nNearby", "47"),
                  const SizedBox(width: 12),
                  _buildStatCard("Fulfilled\nToday", "8"),
                ],
              ),

              const SizedBox(height: 32),

              // Urgent Blood Requests
              const Text("Urgent Requests Near You", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),

              _buildUrgentRequest("A+ Blood Needed", "2 Units", "Holy Family Hospital", "Rawalpindi", "12 min ago"),
              _buildUrgentRequest("O- Plasma Request", "1 Unit", "AFIP Blood Bank", "Islamabad", "47 min ago"),

              const SizedBox(height: 32),

              // Quick Actions
              const Text("Quick Actions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),

              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.35,
                children: [
                  _buildQuickAction(Icons.list_alt, "Manage Requests", () {
                    Navigator.pushNamed(context, '/blood-request-management');
                  }),
                  _buildQuickAction(Icons.people, "Find Donors", () {
                    Navigator.pushNamed(context, '/donor-data');
                  }),
                  _buildQuickAction(Icons.card_giftcard, "Generate Certificate", () {
                    Navigator.pushNamed(context, '/certificate-generation');
                  }),
                  _buildQuickAction(Icons.local_hospital, "Blood Bank Update", () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Consistent Stat Card using primaryMaroon
  Widget _buildStatCard(String title, String value) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: primaryMaroon.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 14, color: Colors.grey[700])),
            const SizedBox(height: 8),
            Text(
              value,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: primaryMaroon,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUrgentRequest(String blood, String units, String hospital, String location, String time) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(blood, style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                ),
                const Spacer(),
                Text(time, style: const TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 12),
            Text(hospital, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text(location, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(units, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: primaryMaroon),
                  child: const Text("Accept & Coordinate"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAction(IconData icon, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: primaryMaroon.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 36, color: primaryMaroon),
            const SizedBox(height: 10),
            Text(title, textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
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
                const Text("Volunteer", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 8),
              children: [
                _buildDrawerItem(Icons.dashboard, "Dashboard", onTap: () => Navigator.pop(context)),
                _buildDrawerItem(Icons.bloodtype, "Blood Request Management", onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/blood-request-management');
                }),
                _buildDrawerItem(Icons.people, "Donor Data", onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/donor-data');
                }),
                _buildDrawerItem(Icons.card_giftcard, "Digital Certificate", onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/certificate-generation');
                }),
                _buildDrawerItem(Icons.notifications, "Notifications", onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/notifications');
                }),
                _buildDrawerItem(Icons.person, "My Profile", onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/volunteer-profile');
                }),
                _buildDrawerItem(Icons.settings, "Settings", onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/volunteer-settings');
                }),
                _buildDrawerItem(Icons.help_outline, "Help & Support", onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/help-support');
                }),

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