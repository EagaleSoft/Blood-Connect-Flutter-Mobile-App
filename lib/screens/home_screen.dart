// import 'package:flutter/material.dart';
// import '../constants.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Home'), backgroundColor: primaryMaroon),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Icon(
//               Icons.bloodtype_rounded,
//               size: 100,
//               color: primaryMaroon,
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               'Welcome to Blood Connect',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 30),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.popUntil(context, (route) => route.isFirst);
//               },
//               child: const Text('Logout'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// lib/screens/home_screen.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// Yahan apne constants ko import karein (Path apne hisaab se theek kar lein)
import '../constants.dart';

// Agar ye files abhi nahi banayin to inko comment kar dein warna errors ayenge.
import 'Blood_Bank_Screen.dart';
import 'Blood_Request_Screen.dart';
import 'Ambulance.dart';
import 'Profile_Screen.dart';
import 'Blood_Request_Nearby.dart';
import 'Find_Volunteer_Screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  // In screens ko error free rakhne ke liye abhi maine list banai hai.
  // Agar BloodBankScreen wagera nahi bani to yahan Container() laga dein filhal.
  final List<Widget> _screens = [
    const DashboardContent(),
    const BloodBankScreen(),
    const BloodRequestScreen(),
    const ProfileTabContent(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawer(),
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: primaryMaroon,
        ), // Dark Mehroon Color
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white60,
          backgroundColor: primaryMaroon, // Dark Mehroon Theme
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: "Blood Bank",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bloodtype),
              label: "Blood Request",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }

  // ==================== Drawer ====================
  Widget _buildDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 25),
            decoration: const BoxDecoration(
              gradient: splashGradient, // constants.dart ka gradient
            ),
            child: const Column(
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 55,
                    color: primaryMaroon,
                  ), // Dark Mehroon
                ),
                SizedBox(height: 12),
                Text(
                  "Hello,",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  appName, // constants.dart se
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 8),
              children: [
                _buildDrawerItem(Icons.list_alt_outlined, "View Requests"),
                _buildDrawerItem(
                  Icons.people_outline,
                  "Find Volunteer",
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const FindVolunteerScreen(),
                      ),
                    );
                  },
                ),
                _buildDrawerItem(Icons.contact_mail_outlined, "Contact Us"),
                _buildDrawerItem(Icons.favorite_border, "Thank You"),
                _buildDrawerItem(Icons.share_outlined, "Share App"),
                _buildDrawerItem(Icons.star_border, "Rate Us"),
                _buildDrawerItem(Icons.privacy_tip_outlined, "Privacy Policy"),
                _buildDrawerItem(
                  Icons.description_outlined,
                  "License Agreement",
                ),
                _buildDrawerItem(Icons.info_outline, "About App"),
                _buildDrawerItem(Icons.feedback_outlined, "Help/Feedback"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(
    IconData icon,
    String title, {
    bool isSelected = false,
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: isSelected ? primaryMaroon : Colors.black87),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
          color: isSelected ? primaryMaroon : Colors.black87,
        ),
      ),
      onTap: onTap ?? () => Navigator.pop(context),
    );
  }
}

// ==================== Dashboard Content ====================
class DashboardContent extends StatefulWidget {
  const DashboardContent({super.key});

  @override
  State<DashboardContent> createState() => _DashboardContentState();
}

class _DashboardContentState extends State<DashboardContent> {
  int _carouselIndex = 0;

  final List<String> carouselImages = [
    'lib/assets/blood_donation.png',
    'lib/assets/blood_donation.png',
    'lib/assets/blood_donation.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          appName,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: primaryMaroon, // Dark Mehroon theme
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.remove_red_eye_outlined,
              color: Colors.white,
              size: 28,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const BloodRequestsNearbyScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CarouselSlider.builder(
                  itemCount: carouselImages.length,
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.28,
                    viewportFraction: 1.0,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    onPageChanged: (index, reason) {
                      setState(() => _carouselIndex = index);
                    },
                  ),
                  itemBuilder: (context, index, realIndex) {
                    return Image.asset(
                      carouselImages[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey[300],
                        child: const Icon(
                          Icons.broken_image,
                          size: 60,
                          color: Colors.grey,
                        ),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      carouselImages.length,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: _carouselIndex == index ? 22 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: _carouselIndex == index
                              ? primaryMaroon
                              : Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.08,
                children: [
                  _buildServiceCard(
                    title: "Blood Donate",
                    icon: Icons.favorite,
                    onTap: () {},
                  ),
                  _buildServiceCard(
                    title: "Blood Bank",
                    icon: Icons.local_hospital,
                    onTap: () => _navigateWithoutBack(const BloodBankScreen()),
                  ),
                  _buildServiceCard(
                    title: "Blood Request",
                    icon: Icons.message,
                    onTap: () =>
                        _navigateWithoutBack(const BloodRequestScreen()),
                  ),
                  _buildServiceCard(
                    title: "Ambulance",
                    icon: Icons.emergency,
                    onTap: () => _navigateWithoutBack(const AmbulanceScreen()),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  void _navigateWithoutBack(Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  Widget _buildServiceCard({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient:
              splashGradient, // constants.dart wala gradient lagaya for premium look
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: primaryMaroon.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.white),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
