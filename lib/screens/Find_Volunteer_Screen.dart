// // lib/screens/find_volunteer_screen.dart
// import 'package:flutter/material.dart';
// import '../theme.dart';

// class FindVolunteerScreen extends StatelessWidget {
//   static const String routeName = '/find_volunteer';

//   FindVolunteerScreen({super.key});

//   final List<Map<String, dynamic>> volunteers = [
//     {
//       "name": "Jiban Dahal",
//       "location": "Dharan, Sunsari, Province No.1",
//       "phone": "+9779842236889",
//       "bloodGroup": "A+",
//     },
//     {
//       "name": "Anuj Sharma",
//       "location": "Dharan, Sunsari, Province No.1",
//       "phone": "+9779842348822",
//       "bloodGroup": "O+",
//     },
//     {
//       "name": "Shyam Koirala",
//       "location": "Dharan, Sunsari, Province No.1",
//       "phone": "+9779861785336",
//       "bloodGroup": "B+",
//     },
//     {
//       "name": "Rajiv Parajuli",
//       "location": "Dharan, Sunsari, Province No.1",
//       "phone": "+9779820341928",
//       "bloodGroup": "AB+",
//     },
//     {
//       "name": "Manisha Bishwokarma",
//       "location": "Dharan, Sunsari, Province No.1",
//       "phone": "+9779861785374",
//       "bloodGroup": "A+",
//     },
//     {
//       "name": "KRISHAN KUMAR RONEYAR",
//       "location": "Dharan, Sunsari, Province No.1",
//       "phone": "+9779861785383",
//       "bloodGroup": "O-",
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Nearest Volunteer"),
//         flexibleSpace: Container(
//           decoration: const BoxDecoration(color: AppTheme.primaryColor),
//         ),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () => Navigator.pop(context),
//         ),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 12),
//             child: Icon(Icons.search),
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(12),
//         itemCount: volunteers.length,
//         itemBuilder: (context, index) {
//           final volunteer = volunteers[index];
//           return Card(
//             margin: const EdgeInsets.only(bottom: 12),
//             elevation: 3,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(14),
//               child: Row(
//                 children: [
//                   // Profile Picture
//                   CircleAvatar(
//                     radius: 28,
//                     backgroundColor: Colors.grey[200],
//                     child: const Icon(
//                       Icons.person,
//                       size: 32,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   const SizedBox(width: 16),

//                   // Details
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           volunteer["name"],
//                           style: const TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 4),
//                         Text(
//                           volunteer["location"],
//                           style: TextStyle(
//                             fontSize: 13,
//                             color: Colors.grey[700],
//                           ),
//                         ),
//                         const SizedBox(height: 4),
//                         Text(
//                           volunteer["phone"],
//                           style: const TextStyle(fontSize: 14),
//                         ),
//                       ],
//                     ),
//                   ),

//                   // Call Button
//                   GestureDetector(
//                     onTap: () {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(
//                           content: Text("Calling ${volunteer["phone"]}..."),
//                           backgroundColor: Colors.green,
//                         ),
//                       );
//                     },
//                     child: Container(
//                       padding: const EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                         color: Colors.green[50],
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
// lib/screens/find_volunteer_screen.dart
import 'package:flutter/material.dart';
import '../constants.dart'; // AppTheme ki jagah constants import kiya

class FindVolunteerScreen extends StatelessWidget {
  static const String routeName = '/find_volunteer';

  // Constructor ko const bana diya
  const FindVolunteerScreen({super.key});

  // List ko static const kar diya taake const constructor kaam kare
  static const List<Map<String, String>> volunteers = [
    {
      "name": "Jiban Dahal",
      "location": "Dharan, Sunsari, Province No.1",
      "phone": "+9779842236889",
      "bloodGroup": "A+",
    },
    {
      "name": "Anuj Sharma",
      "location": "Dharan, Sunsari, Province No.1",
      "phone": "+9779842348822",
      "bloodGroup": "O+",
    },
    {
      "name": "Shyam Koirala",
      "location": "Dharan, Sunsari, Province No.1",
      "phone": "+9779861785336",
      "bloodGroup": "B+",
    },
    {
      "name": "Rajiv Parajuli",
      "location": "Dharan, Sunsari, Province No.1",
      "phone": "+9779820341928",
      "bloodGroup": "AB+",
    },
    {
      "name": "Manisha Bishwokarma",
      "location": "Dharan, Sunsari, Province No.1",
      "phone": "+9779861785374",
      "bloodGroup": "A+",
    },
    {
      "name": "KRISHAN KUMAR RONEYAR",
      "location": "Dharan, Sunsari, Province No.1",
      "phone": "+9779861785383",
      "bloodGroup": "O-",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nearest Volunteer",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryMaroon, // Dark Mehroon theme
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: volunteers.length,
        itemBuilder: (context, index) {
          final volunteer = volunteers[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Row(
                children: [
                  // Profile Picture
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.grey[200],
                    child: const Icon(
                      Icons.person,
                      size: 32,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          volunteer["name"]!,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          volunteer["location"]!,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          volunteer["phone"]!,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),

                  // Call Button
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Calling ${volunteer["phone"]}..."),
                          backgroundColor: Colors.green,
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green[50],
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
