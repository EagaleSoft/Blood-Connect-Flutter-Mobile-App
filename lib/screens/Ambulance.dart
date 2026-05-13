// // lib/screens/Ambulance_screen.dart
// import 'package:flutter/material.dart';
// import '../constants.dart';

// class AmbulanceScreen extends StatelessWidget {
//   static const String routeName = '/ambulance';

//   const AmbulanceScreen({super.key});

//   static const List<Map<String, dynamic>> ambulanceList = [
//     {
//       "name": "BELTAR AMBULANCE",
//       "address": "Beltar, Udayapur",
//       "phone": "9841234567",
//     },
//     {
//       "name": "DHARAN AMBULANCE",
//       "address": "Dharan, Sunsari",
//       "phone": "9851034567",
//     },
//     {
//       "name": "BIRATNAGAR AMBULANCE",
//       "address": "Biratnagar, Morang",
//       "phone": "9842034567",
//     },
//     {
//       "name": "LAHAN AMBULANCE",
//       "address": "Lahan, Siraha",
//       "phone": "9865234567",
//     },
//     {
//       "name": "GAURADAH AMBULANCE",
//       "address": "Gauradah, Jhapa",
//       "phone": "9841534567",
//     },
//     {
//       "name": "DAMAK AMBULANCE",
//       "address": "Damak, Jhapa",
//       "phone": "9815234567",
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppTheme.primaryColor,
//         title: const Text(
//           "Nearest Ambulance",
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios),
//           onPressed: () => Navigator.pop(context),
//         ),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 16),
//             child: Icon(Icons.search, color: Colors.white),
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16),
//         itemCount: ambulanceList.length,
//         itemBuilder: (context, index) {
//           final ambulance = ambulanceList[index];
//           return Card(
//             margin: const EdgeInsets.only(bottom: 14),
//             elevation: 4,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(16),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Row(
//                 children: [
//                   // Ambulance Icon
//                   Container(
//                     height: 50,
//                     width: 50,
//                     decoration: BoxDecoration(
//                       color: AppTheme.primaryColor.withOpacity(0.1),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: const Icon(
//                       Icons.local_hospital,
//                       color: Color(0xFF6B0000),
//                       size: 28,
//                     ),
//                   ),

//                   const SizedBox(width: 16),

//                   // Details
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           ambulance["name"],
//                           style: const TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 6),
//                         Text(
//                           ambulance["address"],
//                           style: TextStyle(
//                             fontSize: 14,
//                             color: Colors.grey[600],
//                             height: 1.3,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   // Call Button
//                   GestureDetector(
//                     onTap: () {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text("Calling ${ambulance["phone"]}"),
//                           backgroundColor: Colors.green,
//                           duration: const Duration(seconds: 2),
//                         ),
//                       );
//                       // TODO: Later integrate url_launcher for real calling
//                     },
//                     child: Container(
//                       padding: const EdgeInsets.all(12),
//                       decoration: BoxDecoration(
//                         color: Colors.green.withOpacity(0.1),
//                         shape: BoxShape.circle,
//                       ),
//                       child: const Icon(
//                         Icons.phone,
//                         color: Colors.green,
//                         size: 28,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// lib/screens/Ambulance_screen.dart
import 'package:flutter/material.dart';
import '../constants.dart'; // Apki constants file

class AmbulanceScreen extends StatelessWidget {
  static const String routeName = '/ambulance';

  const AmbulanceScreen({super.key});

  // dynamic ki jagah String use kiya taake const theek se kaam kare
  static const List<Map<String, String>> ambulanceList = [
    {
      "name": "BELTAR AMBULANCE",
      "address": "Beltar, Udayapur",
      "phone": "9841234567",
    },
    {
      "name": "DHARAN AMBULANCE",
      "address": "Dharan, Sunsari",
      "phone": "9851034567",
    },
    {
      "name": "BIRATNAGAR AMBULANCE",
      "address": "Biratnagar, Morang",
      "phone": "9842034567",
    },
    {
      "name": "LAHAN AMBULANCE",
      "address": "Lahan, Siraha",
      "phone": "9865234567",
    },
    {
      "name": "GAURADAH AMBULANCE",
      "address": "Gauradah, Jhapa",
      "phone": "9841534567",
    },
    {
      "name": "DAMAK AMBULANCE",
      "address": "Damak, Jhapa",
      "phone": "9815234567",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryMaroon, // AppTheme ki jagah primaryMaroon
        iconTheme: const IconThemeData(color: whiteColor), // Back button white
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
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: primaryMaroon.withOpacity(
                        0.1,
                      ), // AppTheme ki jagah primaryMaroon
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.local_hospital,
                      color: primaryMaroon, // Icon color dark mehroon
                      size: 28,
                    ),
                  ),

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
                      // TODO: Later integrate url_launcher for real calling
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
