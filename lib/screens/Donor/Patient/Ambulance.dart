// lib/screens/Ambulance_screen.dart
import 'package:flutter/material.dart';
import '../../../constants.dart'; // Apki constants file

class AmbulanceScreen extends StatelessWidget {
  static const String routeName = '/ambulance';

  const AmbulanceScreen({super.key});

  // dynamic ki jagah String use kiya taake const theek se kaam kare
  static const List<Map<String, String>> ambulanceList = [
    {
      "name": "KARACHI AMBULANCE",
      "address": "Gulshan-e-Iqbal, Karachi",
      "phone": "03001234567",
    },
    {
      "name": "LAHORE AMBULANCE",
      "address": "Wapda Town, Lahore",
      "phone": "03211223344",
    },
    {
      "name": "ISLAMABAD AMBULANCE",
      "address": "Sector F-8, Islamabad",
      "phone": "03331234567",
    },
    {
      "name": "RAWALPINDI AMBULANCE",
      "address": "Satellite Town, Rawalpindi",
      "phone": "03111234567",
    },
    {
      "name": "FAISALABAD AMBULANCE",
      "address": "Madina Town, Faisalabad",
      "phone": "04111222333",
    },
    {
      "name": "MULTAN AMBULANCE",
      "address": "Cantonment, Multan",
      "phone": "06111222233",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryMaroon,
        iconTheme: const IconThemeData(color: whiteColor),
        title: const Text(
          "Nearest Ambulance",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: whiteColor,
          ), // Text white
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search, color: whiteColor), // Search icon white
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: ambulanceList.length,
        itemBuilder: (context, index) {
          final ambulance = ambulanceList[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 14),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  // Ambulance Icon
                  const SizedBox(width: 16),

                  // Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ambulance["name"]!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          ambulance["address"]!,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Call Button
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Calling ${ambulance["phone"]}..."),
                          backgroundColor: Colors.green,
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.phone,
                        color: Colors.green,
                        size: 28,
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
