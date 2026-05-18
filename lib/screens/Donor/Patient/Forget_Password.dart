// // lib/screens/forget_password_screen.dart
// import 'package:flutter/material.dart';
// import '../constants.dart'; 

// class ForgetPasswordScreen extends StatefulWidget {
//   static const String routeName = '/forget_password';

//   const ForgetPasswordScreen({super.key});

//   @override
//   State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
// }

// class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
//   final _emailController = TextEditingController();
//   bool _isLoading = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: primaryMaroon,
//         title: const Text("Forgot Password"),
//         foregroundColor: Colors.white,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 20),
//             const Text(
//               "Forgot Password?",
//               style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 12),
//             const Text(
//               "Enter your registered email address and we will send you a link to reset your password.",
//               style: TextStyle(fontSize: 16, color: Colors.grey),
//             ),
//             const SizedBox(height: 40),

//             TextField(
//               controller: _emailController,
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 labelText: "Email Address",
//                 hintText: "example@email.com",
//                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//                 prefixIcon: const Icon(Icons.email_outlined),
//               ),
//             ),

//             const SizedBox(height: 30),

//             SizedBox(
//               width: double.infinity,
//               height: 55,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: primaryMaroon,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),
//                 onPressed: _isLoading
//                     ? null
//                     : () {
//                         setState(() => _isLoading = true);
//                         // Simulate API call
//                         Future.delayed(const Duration(seconds: 2), () {
//                           setState(() => _isLoading = false);
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             const SnackBar(
//                               content: Text("Password reset link sent to your email!"),
//                               backgroundColor: Colors.green,
//                             ),
//                           );
//                           Navigator.pop(context);
//                         });
//                       },
//                 child: _isLoading
//                     ? const CircularProgressIndicator(color: Colors.white)
//                     : const Text(
//                         "Send Reset Link",
//                         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//               ),
//             ),

//             const SizedBox(height: 20),
//             Center(
//               child: TextButton(
//                 onPressed: () => Navigator.pop(context),
//                 child: const Text("Back to Login"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _emailController.dispose();
//     super.dispose();
//   }
// }