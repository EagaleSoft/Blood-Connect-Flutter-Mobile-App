// lib/screens/blood_bank_screen.dart
import 'package:flutter/material.dart';
import '../../../constants.dart'; // Apki constants file

class BloodBankScreen extends StatelessWidget {
  static const String routeName = '/blood_bank';

  const BloodBankScreen({super.key});

  static const List<Map<String, String>> bloodBanks = [
    {
      "name": "Punjab Institute of Blood Transfusion Service",
      "location": "Lahore (Shahrah-e-Quaid-e-Azam)",
      "phone": "04211122233",
    },
    {
      "name": "Pakistan Red Crescent Blood Center",
      "location": "Karachi (Clifton)",
      "phone": "02111144455",
    },
    {
      "name": "Islamabad Blood Bank & Transfusion Unit",
      "location": "Sector G-8, Islamabad",
      "phone": "05111133344",
    },
    {
      "name": "Faisalabad Regional Blood Transfusion Centre",
      "location": "Madina Town, Faisalabad",
      "phone": "04111155566",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: primaryMaroon,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Blood Banks near you",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: bloodBanks.length,
        itemBuilder: (context, index) {
          final bank = bloodBanks[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              bank["name"]!, // Null-safety ke liye ! add kiya
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB71C1C), // Deep red for title
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              bank["location"]!,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey[600],
                              ),
                            ),
                            Text(
                              bank["phone"]!,
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Prototype Call Icon with Signal Waves
                      const Icon(
                        Icons.phone_in_talk,
                        color: Colors.green,
                        size: 30,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Button centered and width matches prototype
                  SizedBox(
                    width: 220, // Specific width to match the prototype look
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            primaryMaroon, // AppTheme ki jagah primaryMaroon
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: const Text(
                        "SEE ON GOOGLE MAP",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
