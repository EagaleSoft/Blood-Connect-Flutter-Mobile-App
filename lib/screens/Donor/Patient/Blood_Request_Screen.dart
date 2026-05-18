// // lib/screens/blood_request_screen.dart
// import 'package:flutter/material.dart';
// import '../constants.dart';

// class BloodRequestScreen extends StatefulWidget {
//   static const String routeName = '/blood_request';

//   const BloodRequestScreen({super.key});

//   @override
//   State<BloodRequestScreen> createState() => _BloodRequestScreenState();
// }

// class _BloodRequestScreenState extends State<BloodRequestScreen> {
//   final _formKey = GlobalKey<FormState>();

//   String? selectedBloodGroup;

//   final List<String> bloodGroups = [
//     'A+',
//     'B+',
//     'AB+',
//     'O+',
//     'A-',
//     'B-',
//     'AB-',
//     'O-',
//   ];

//   final patientNameController = TextEditingController();
//   final locationController = TextEditingController();
//   final hospitalController = TextEditingController();
//   final caseController = TextEditingController();

//   final Map<String, bool> bloodConstituents = {
//     "Whole Blood": false,
//     "FFP": false,
//     "PCV": false,
//     "PRP": false,
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppTheme.primaryColor,
//         title: const Text("Request Form"),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Patient Name
//               _buildLabel("Patient Name"),
//               const SizedBox(height: 8),
//               TextFormField(
//                 controller: patientNameController,
//                 decoration: _inputDecoration(hint: "Enter patient name"),
//                 validator: (value) => value!.isEmpty ? "Required" : null,
//               ),
//               const SizedBox(height: 20),

//               // Location
//               _buildLabel("Location"),
//               const SizedBox(height: 8),
//               TextFormField(
//                 controller: locationController,
//                 decoration: _inputDecoration(
//                   hint: "Dharan, Sunsari, Koshi Province",
//                   suffixIcon: const Icon(Icons.location_pin, color: Colors.red),
//                 ),
//                 validator: (value) => value!.isEmpty ? "Required" : null,
//               ),
//               const SizedBox(height: 20),

//               // Hospital Name
//               _buildLabel("Hospital Name"),
//               const SizedBox(height: 8),
//               TextFormField(
//                 controller: hospitalController,
//                 decoration: _inputDecoration(hint: "Enter hospital name"),
//               ),
//               const SizedBox(height: 24),

//               // Blood Group
//               _buildLabel("Blood Group"),
//               const SizedBox(height: 12),
//               Wrap(
//                 spacing: 12,
//                 runSpacing: 12,
//                 children: bloodGroups.map((group) {
//                   final isSelected = selectedBloodGroup == group;
//                   return GestureDetector(
//                     onTap: () => setState(() => selectedBloodGroup = group),
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 24,
//                         vertical: 14,
//                       ),
//                       decoration: BoxDecoration(
//                         color: isSelected
//                             ? AppTheme.primaryColor
//                             : Colors.white,
//                         border: Border.all(
//                           color: isSelected
//                               ? AppTheme.primaryColor
//                               : Colors.grey.shade400,
//                           width: 1.5,
//                         ),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Text(
//                         group,
//                         style: TextStyle(
//                           color: isSelected
//                               ? Colors.white
//                               : AppTheme.textPrimary,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   );
//                 }).toList(),
//               ),
//               const SizedBox(height: 24),

//               // Blood Constituents
//               _buildLabel("Blood Constituents"),
//               const SizedBox(height: 8),
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey.shade300),
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   children: bloodConstituents.keys.map((key) {
//                     return CheckboxListTile(
//                       title: Text(key, style: const TextStyle(fontSize: 16)),
//                       value: bloodConstituents[key],
//                       contentPadding: const EdgeInsets.symmetric(
//                         horizontal: 12,
//                       ),
//                       activeColor: AppTheme.primaryColor,
//                       onChanged: (value) {
//                         setState(() => bloodConstituents[key] = value!);
//                       },
//                     );
//                   }).toList(),
//                 ),
//               ),
//               const SizedBox(height: 24),

//               // Case
//               _buildLabel("Case"),
//               const SizedBox(height: 8),
//               TextFormField(
//                 controller: caseController,
//                 decoration: _inputDecoration(hint: "eg: Accident, Pregnancy"),
//               ),
//               const SizedBox(height: 40),

//               // Send Request Button
//               SizedBox(
//                 width: double.infinity,
//                 height: 56,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     if (_formKey.currentState!.validate() &&
//                         selectedBloodGroup != null) {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(
//                           content: Text("Request Sent Successfully!"),
//                           backgroundColor: Colors.green,
//                         ),
//                       );
//                     }
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: AppTheme.primaryColor,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: const Text(
//                     "SEND REQUEST",
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper Widget for Labels
//   Widget _buildLabel(String text) {
//     return Text(
//       text,
//       style: TextStyle(
//         fontSize: 16,
//         fontWeight: FontWeight.w600,
//         color: AppTheme.secondaryColor, // Dark text color
//       ),
//     );
//   }

//   // Input Decoration Helper
//   InputDecoration _inputDecoration({String? hint, Widget? suffixIcon}) {
//     return InputDecoration(
//       hintText: hint,
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//         borderSide: BorderSide(color: Colors.grey.shade400),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//         borderSide: BorderSide(color: Colors.grey.shade400),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//         borderSide: BorderSide(color: AppTheme.primaryColor, width: 2),
//       ),
//       suffixIcon: suffixIcon,
//       contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
//     );
//   }
// }

// lib/screens/blood_request_screen.dart
import 'package:flutter/material.dart';
import '../../../constants.dart'; // Apna constants file import kiya

class BloodRequestScreen extends StatefulWidget {
  static const String routeName = '/blood_request';

  const BloodRequestScreen({super.key});

  @override
  State<BloodRequestScreen> createState() => _BloodRequestScreenState();
}

class _BloodRequestScreenState extends State<BloodRequestScreen> {
  final _formKey = GlobalKey<FormState>();

  String? selectedBloodGroup;

  final List<String> bloodGroups = [
    'A+',
    'B+',
    'AB+',
    'O+',
    'A-',
    'B-',
    'AB-',
    'O-',
  ];

  final patientNameController = TextEditingController();
  final locationController = TextEditingController();
  final hospitalController = TextEditingController();
  final caseController = TextEditingController();

  final Map<String, bool> bloodConstituents = {
    "Whole Blood": false,
    "FFP": false,
    "PCV": false,
    "PRP": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryMaroon, // AppTheme ki jagah primaryMaroon
        iconTheme: const IconThemeData(color: whiteColor), // Icon color white
        title: const Text(
          "Request Form",
          style: TextStyle(color: whiteColor),
        ), // Text color white
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Patient Name
              _buildLabel("Patient Name"),
              const SizedBox(height: 8),
              TextFormField(
                controller: patientNameController,
                decoration: _inputDecoration(hint: "Enter patient name"),
                validator: (value) => value!.isEmpty ? "Required" : null,
              ),
              const SizedBox(height: 20),

              // Location
              _buildLabel("Location"),
              const SizedBox(height: 8),
              TextFormField(
                controller: locationController,
                decoration: _inputDecoration(
                  hint: "Lahore, Punjab, Pakistan",
                  suffixIcon: const Icon(Icons.location_pin, color: Colors.red),
                ),
                validator: (value) => value!.isEmpty ? "Required" : null,
              ),
              const SizedBox(height: 20),

              // Hospital Name
              _buildLabel("Hospital Name"),
              const SizedBox(height: 8),
              TextFormField(
                controller: hospitalController,
                decoration: _inputDecoration(hint: "Enter hospital name"),
              ),
              const SizedBox(height: 24),

              // Blood Group
              _buildLabel("Blood Group"),
              const SizedBox(height: 12),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: bloodGroups.map((group) {
                  final isSelected = selectedBloodGroup == group;
                  return GestureDetector(
                    onTap: () => setState(() => selectedBloodGroup = group),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? primaryMaroon // AppTheme ki jagah primaryMaroon
                            : Colors.white,
                        border: Border.all(
                          color: isSelected
                              ? primaryMaroon // AppTheme ki jagah primaryMaroon
                              : Colors.grey.shade400,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        group,
                        style: TextStyle(
                          color: isSelected
                              ? Colors.white
                              : blackColor, // AppTheme ki jagah blackColor
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 24),

              // Blood Constituents
              _buildLabel("Blood Constituents"),
              const SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: bloodConstituents.keys.map((key) {
                    return CheckboxListTile(
                      title: Text(key, style: const TextStyle(fontSize: 16)),
                      value: bloodConstituents[key],
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      activeColor:
                          primaryMaroon, // AppTheme ki jagah primaryMaroon
                      onChanged: (value) {
                        setState(() => bloodConstituents[key] = value!);
                      },
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 24),

              // Case
              _buildLabel("Case"),
              const SizedBox(height: 8),
              TextFormField(
                controller: caseController,
                decoration: _inputDecoration(hint: "eg: Accident, Pregnancy"),
              ),
              const SizedBox(height: 40),

              // Send Request Button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate() &&
                        selectedBloodGroup != null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Request Sent Successfully!"),
                          backgroundColor: Colors.green,
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        primaryMaroon, // AppTheme ki jagah primaryMaroon
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "SEND REQUEST",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper Widget for Labels
  Widget _buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: blackColor, // AppTheme.secondaryColor ki jagah blackColor lagaya
      ),
    );
  }

  // Input Decoration Helper
  InputDecoration _inputDecoration({String? hint, Widget? suffixIcon}) {
    return InputDecoration(
      hintText: hint,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.grey.shade400),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.grey.shade400),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: primaryMaroon,
          width: 2,
        ), // AppTheme ki jagah primaryMaroon
      ),
      suffixIcon: suffixIcon,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    );
  }
}
