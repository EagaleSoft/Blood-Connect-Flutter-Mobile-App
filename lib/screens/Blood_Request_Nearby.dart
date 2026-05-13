// // lib/screens/public_requests_screen.dart
// import 'package:flutter/material.dart';
// import '../theme.dart';

// class BloodRequestsNearbyScreen extends StatelessWidget {
//   static const String routeName = '/public_requests';

//   BloodRequestsNearbyScreen({super.key});

//   final List<Map<String, dynamic>> requests = [
//     {
//       "name": "meena yadav",
//       "bloodGroup": "B+, 1 Pints, Fresh Blood",
//       "location": "Koshi, Belani Khola, Koshi Province, Madhesh",
//       "phone": "9819054567",
//       "time": "Jun 12, 2024  10:11 pm",
//     },
//     {
//       "name": "rifan ahmed nadeem",
//       "bloodGroup": "O-, 1 Pints, Fresh Blood",
//       "location": "Biratnagar, Morang",
//       "phone": "3157361193",
//       "time": "May 2, 2024  09:00 PM",
//     },
//     {
//       "name": "Krishna",
//       "bloodGroup": "B+, 2 Pints, PCV",
//       "location": "Ganga Hospital, Biratnagar",
//       "phone": "9845672322",
//       "time": "May 2, 2024  08:38 am",
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Blood Requests Nearby"),
//         flexibleSpace: Container(
//           decoration: const BoxDecoration(color: AppTheme.primaryColor),
//         ),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(12),
//         itemCount: requests.length,
//         itemBuilder: (context, index) {
//           final request = requests[index];
//           return Card(
//             margin: const EdgeInsets.only(bottom: 12),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         request["name"].toUpperCase(),
//                         style: const TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                         ),
//                       ),
//                       const Spacer(),
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 12,
//                           vertical: 6,
//                         ),
//                         decoration: BoxDecoration(
//                           color: Colors.red.shade50,
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         child: Text(
//                           request["bloodGroup"],
//                           style: TextStyle(
//                             color: AppTheme.primaryColor,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     request["location"],
//                     style: TextStyle(color: Colors.grey[700]),
//                   ),
//                   const SizedBox(height: 12),
//                   Row(
//                     children: [
//                       const Icon(Icons.phone, color: Colors.green, size: 20),
//                       const SizedBox(width: 8),
//                       Text(request["phone"]),
//                       const Spacer(),
//                       ElevatedButton(
//                         onPressed: () {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(
//                               content: Text("Calling ${request["phone"]}..."),
//                             ),
//                           );
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: AppTheme.primaryColor,
//                           foregroundColor: Colors.white,
//                           padding: const EdgeInsets.symmetric(horizontal: 22),
//                         ),
//                         child: const Text("ACCEPT"),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(content: Text("Rejecting request...")),
//                           );
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.green[300],
//                           foregroundColor: Colors.white,
//                           padding: const EdgeInsets.symmetric(horizontal: 24),
//                         ),
//                         child: const Text("Reject"),
//                       ),
//                     ],
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

// lib/screens/blood_request_nearby.dart
import 'package:flutter/material.dart';
import '../constants.dart'; // AppTheme ki jagah constants import kiya

class BloodRequestsNearbyScreen extends StatelessWidget {
  static const String routeName = '/public_requests';

  // Constructor ko const bana diya
  const BloodRequestsNearbyScreen({super.key});

  // List ko static const kar diya taake const constructor theek rahe
  static const List<Map<String, String>> requests = [
    {
      "name": "meena yadav",
      "bloodGroup": "B+, 1 Pints, Fresh Blood",
      "location": "Koshi, Belani Khola, Koshi Province, Madhesh",
      "phone": "9819054567",
      "time": "Jun 12, 2024  10:11 pm",
    },
    {
      "name": "rifan ahmed nadeem",
      "bloodGroup": "O-, 1 Pints, Fresh Blood",
      "location": "Biratnagar, Morang",
      "phone": "3157361193",
      "time": "May 2, 2024  09:00 PM",
    },
    {
      "name": "Krishna",
      "bloodGroup": "B+, 2 Pints, PCV",
      "location": "Ganga Hospital, Biratnagar",
      "phone": "9845672322",
      "time": "May 2, 2024  08:38 am",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Blood Requests Nearby",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryMaroon, // Dark Mehroon Theme
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: requests.length,
        itemBuilder: (context, index) {
          final request = requests[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        request["name"]!.toUpperCase(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          request["bloodGroup"]!,
                          style: const TextStyle(
                            color: primaryMaroon, // Dark Mehroon
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    request["location"]!,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(Icons.phone, color: Colors.green, size: 20),
                      const SizedBox(width: 8),
                      Text(request["phone"]!),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Calling ${request["phone"]}..."),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryMaroon, // Dark Mehroon
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                        ),
                        child: const Text("ACCEPT"),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Rejecting request..."),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[400],
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                        ),
                        child: const Text("Reject"),
                      ),
                    ],
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
