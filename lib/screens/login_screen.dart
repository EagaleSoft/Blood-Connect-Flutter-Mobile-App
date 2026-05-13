// // // // // import 'package:flutter/material.dart';
// // // // // import '../constants.dart';
// // // // // import '../routes.dart';

// // // // // class LoginScreen extends StatelessWidget {
// // // // //   final String role;
// // // // //   const LoginScreen({super.key, required this.role});

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       body: Container(
// // // // //         width: double.infinity,
// // // // //         height: double.infinity,
// // // // //         decoration: const BoxDecoration(
// // // // //           gradient: LinearGradient(
// // // // //             begin: Alignment.topCenter,
// // // // //             end: Alignment.bottomCenter,
// // // // //             colors: [primaryMaroon, Color(0xFF4A0000)], // Darker shade
// // // // //           ),
// // // // //         ),
// // // // //         child: SafeArea(
// // // // //           child: SingleChildScrollView(
// // // // //             child: Padding(
// // // // //               padding: const EdgeInsets.symmetric(horizontal: 28.0),
// // // // //               child: Column(
// // // // //                 children: [
// // // // //                   const SizedBox(height: 60),

// // // // //                   // Logo
// // // // //                   Container(
// // // // //                     padding: const EdgeInsets.all(18),
// // // // //                     decoration: const BoxDecoration(
// // // // //                       color: Colors.white,
// // // // //                       shape: BoxShape.circle,
// // // // //                     ),
// // // // //                     child: const Icon(
// // // // //                       Icons.bloodtype,
// // // // //                       size: 62,
// // // // //                       color: primaryMaroon,
// // // // //                     ),
// // // // //                   ),

// // // // //                   const SizedBox(height: 24),

// // // // //                   Text(
// // // // //                     "Login as $role",
// // // // //                     style: const TextStyle(
// // // // //                       color: Colors.white,
// // // // //                       fontSize: 26,
// // // // //                       fontWeight: FontWeight.w500,
// // // // //                       letterSpacing: 0.8,
// // // // //                     ),
// // // // //                   ),

// // // // //                   const SizedBox(height: 48),

// // // // //                   // Login Card
// // // // //                   Container(
// // // // //                     padding: const EdgeInsets.fromLTRB(28, 32, 28, 40),
// // // // //                     decoration: BoxDecoration(
// // // // //                       color: Colors.white,
// // // // //                       borderRadius: BorderRadius.circular(30),
// // // // //                       boxShadow: [
// // // // //                         BoxShadow(
// // // // //                           color: Colors.black.withOpacity(0.15),
// // // // //                           blurRadius: 30,
// // // // //                           offset: const Offset(0, 15),
// // // // //                         ),
// // // // //                       ],
// // // // //                     ),
// // // // //                     child: Column(
// // // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                       children: [
// // // // //                         const Text(
// // // // //                           "Login with Email",
// // // // //                           style: TextStyle(
// // // // //                             fontSize: 18,
// // // // //                             fontWeight: FontWeight.w600,
// // // // //                             color: Colors.black87,
// // // // //                           ),
// // // // //                         ),

// // // // //                         const SizedBox(height: 28),

// // // // //                         _buildTextField(
// // // // //                           hint: "Email Address",
// // // // //                           icon: Icons.email_outlined,
// // // // //                         ),

// // // // //                         const SizedBox(height: 20),

// // // // //                         _buildTextField(
// // // // //                           hint: "Password",
// // // // //                           icon: Icons.lock_outline,
// // // // //                           isPass: true,
// // // // //                         ),

// // // // //                         const SizedBox(height: 32),

// // // // //                         // Login Button
// // // // //                         SizedBox(
// // // // //                           width: double.infinity,
// // // // //                           height: 58,
// // // // //                           child: ElevatedButton(
// // // // //                             style: ElevatedButton.styleFrom(
// // // // //                               backgroundColor: primaryMaroon,
// // // // //                               elevation: 0,
// // // // //                               shape: RoundedRectangleBorder(
// // // // //                                 borderRadius: BorderRadius.circular(16),
// // // // //                               ),
// // // // //                             ),
// // // // //                             onPressed: () => AppRoutes.replaceWithHome(context),
// // // // //                             child: const Text(
// // // // //                               "LOGIN",
// // // // //                               style: TextStyle(
// // // // //                                 fontSize: 17,
// // // // //                                 fontWeight: FontWeight.bold,
// // // // //                                 letterSpacing: 1.3,
// // // // //                                 color: Colors.white,
// // // // //                               ),
// // // // //                             ),
// // // // //                           ),
// // // // //                         ),

// // // // //                         const SizedBox(height: 28),

// // // // //                         // OR
// // // // //                         const Row(
// // // // //                           children: [
// // // // //                             Expanded(child: Divider(thickness: 1.3)),
// // // // //                             Padding(
// // // // //                               padding: EdgeInsets.symmetric(horizontal: 18),
// // // // //                               child: Text(
// // // // //                                 "OR",
// // // // //                                 style: TextStyle(
// // // // //                                   color: Colors.grey,
// // // // //                                   fontSize: 14,
// // // // //                                   fontWeight: FontWeight.w500,
// // // // //                                 ),
// // // // //                               ),
// // // // //                             ),
// // // // //                             Expanded(child: Divider(thickness: 1.3)),
// // // // //                           ],
// // // // //                         ),

// // // // //                         const SizedBox(height: 24),

// // // // //                         // Phone Button
// // // // //                         SizedBox(
// // // // //                           width: double.infinity,
// // // // //                           height: 58,
// // // // //                           child: OutlinedButton.icon(
// // // // //                             onPressed: () => Navigator.pushNamed(
// // // // //                               context,
// // // // //                               AppRoutes.phoneLogin,
// // // // //                               arguments: role,
// // // // //                             ),
// // // // //                             icon: const Icon(Icons.phone_iphone, size: 24),
// // // // //                             label: const Text(
// // // // //                               "CONTINUE WITH PHONE",
// // // // //                               style: TextStyle(
// // // // //                                 fontSize: 15.5,
// // // // //                                 fontWeight: FontWeight.w600,
// // // // //                               ),
// // // // //                             ),
// // // // //                             style: OutlinedButton.styleFrom(
// // // // //                               foregroundColor: primaryMaroon,
// // // // //                               side: BorderSide(
// // // // //                                 color: primaryMaroon,
// // // // //                                 width: 1.8,
// // // // //                               ),
// // // // //                               shape: RoundedRectangleBorder(
// // // // //                                 borderRadius: BorderRadius.circular(16),
// // // // //                               ),
// // // // //                             ),
// // // // //                           ),
// // // // //                         ),
// // // // //                       ],
// // // // //                     ),
// // // // //                   ),

// // // // //                   const SizedBox(height: 40),

// // // // //                   // Register Link
// // // // //                   Row(
// // // // //                     mainAxisAlignment: MainAxisAlignment.center,
// // // // //                     children: [
// // // // //                       const Text(
// // // // //                         "New user? ",
// // // // //                         style: TextStyle(color: whiteColor70, fontSize: 15.5),
// // // // //                       ),
// // // // //                       GestureDetector(
// // // // //                         onTap: () =>
// // // // //                             Navigator.pushNamed(context, AppRoutes.register),
// // // // //                         child: const Text(
// // // // //                           "Register Now",
// // // // //                           style: TextStyle(
// // // // //                             color: Colors.white,
// // // // //                             fontSize: 15.5,
// // // // //                             fontWeight: FontWeight.bold,
// // // // //                             decoration: TextDecoration.underline,
// // // // //                           ),
// // // // //                         ),
// // // // //                       ),
// // // // //                     ],
// // // // //                   ),

// // // // //                   const SizedBox(height: 30),
// // // // //                 ],
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildTextField({
// // // // //     required String hint,
// // // // //     required IconData icon,
// // // // //     bool isPass = false,
// // // // //   }) {
// // // // //     return TextField(
// // // // //       obscureText: isPass,
// // // // //       style: const TextStyle(fontSize: 16),
// // // // //       decoration: InputDecoration(
// // // // //         prefixIcon: Icon(icon, color: Colors.grey[700], size: 24),
// // // // //         hintText: hint,
// // // // //         hintStyle: TextStyle(color: Colors.grey[500], fontSize: 15.5),
// // // // //         filled: true,
// // // // //         fillColor: Colors.grey[100],
// // // // //         contentPadding: const EdgeInsets.symmetric(
// // // // //           vertical: 18,
// // // // //           horizontal: 20,
// // // // //         ),
// // // // //         enabledBorder: OutlineInputBorder(
// // // // //           borderRadius: BorderRadius.circular(16),
// // // // //           borderSide: BorderSide.none,
// // // // //         ),
// // // // //         focusedBorder: OutlineInputBorder(
// // // // //           borderRadius: BorderRadius.circular(16),
// // // // //           borderSide: BorderSide(color: primaryMaroon, width: 2),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // import 'package:flutter/material.dart';
// // // // import '../constants.dart';
// // // // import '../routes.dart';

// // // // class LoginScreen extends StatelessWidget {
// // // //   final String role;
// // // //   const LoginScreen({super.key, required this.role});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       // backgroundColor set kar rahe hain taaki keyboard open hone par white na dikhe
// // // //       backgroundColor: const Color(0xFF4A0000),
// // // //       body: Container(
// // // //         width: double.infinity,
// // // //         height: double.infinity,
// // // //         decoration: const BoxDecoration(
// // // //           gradient: LinearGradient(
// // // //             begin: Alignment.topLeft,
// // // //             end: Alignment.bottomRight,
// // // //             colors: [primaryMaroon, Color(0xFF330000)],
// // // //           ),
// // // //         ),
// // // //         child: SafeArea(
// // // //           // Layout ko fix rakhne ke liye Column aur Spacer ka use kiya hai
// // // //           child: Padding(
// // // //             padding: const EdgeInsets.symmetric(horizontal: 30.0),
// // // //             child: Column(
// // // //               children: [
// // // //                 const Spacer(flex: 2),

// // // //                 // Logo with Glow
// // // //                 Container(
// // // //                   padding: const EdgeInsets.all(20),
// // // //                   decoration: BoxDecoration(
// // // //                     color: Colors.white,
// // // //                     shape: BoxShape.circle,
// // // //                     boxShadow: [
// // // //                       BoxShadow(
// // // //                         color: Colors.black.withOpacity(0.2),
// // // //                         blurRadius: 20,
// // // //                         spreadRadius: 2,
// // // //                       )
// // // //                     ],
// // // //                   ),
// // // //                   child: const Icon(
// // // //                     Icons.bloodtype_rounded, // Rounded icon for better look
// // // //                     size: 70,
// // // //                     color: primaryMaroon,
// // // //                   ),
// // // //                 ),

// // // //                 const SizedBox(height: 20),

// // // //                 Text(
// // // //                   "Login as $role",
// // // //                   style: const TextStyle(
// // // //                     color: Colors.white,
// // // //                     fontSize: 28,
// // // //                     fontWeight: FontWeight.bold,
// // // //                     letterSpacing: 1.2,
// // // //                   ),
// // // //                 ),

// // // //                 const Spacer(flex: 1),

// // // //                 // Form Container
// // // //                 Container(
// // // //                   padding: const EdgeInsets.all(24),
// // // //                   decoration: BoxDecoration(
// // // //                     color: Colors.white.withOpacity(0.95), // Slight transparency for modern look
// // // //                     borderRadius: BorderRadius.circular(35),
// // // //                   ),
// // // //                   child: Column(
// // // //                     mainAxisSize: MainAxisSize.min,
// // // //                     children: [
// // // //                       _buildTextField(
// // // //                         hint: "Email Address",
// // // //                         icon: Icons.alternate_email_rounded,
// // // //                       ),
// // // //                       const SizedBox(height: 18),
// // // //                       _buildTextField(
// // // //                         hint: "Password",
// // // //                         icon: Icons.lock_person_rounded,
// // // //                         isPass: true,
// // // //                       ),
// // // //                       const SizedBox(height: 25),

// // // //                       // Professional Login Button
// // // //                       SizedBox(
// // // //                         width: double.infinity,
// // // //                         height: 55,
// // // //                         child: ElevatedButton(
// // // //                           style: ElevatedButton.styleFrom(
// // // //                             backgroundColor: primaryMaroon,
// // // //                             foregroundColor: Colors.white,
// // // //                             elevation: 4,
// // // //                             shadowColor: primaryMaroon.withOpacity(0.4),
// // // //                             shape: RoundedRectangleBorder(
// // // //                               borderRadius: BorderRadius.circular(15),
// // // //                             ),
// // // //                           ),
// // // //                           onPressed: () => AppRoutes.replaceWithHome(context),
// // // //                           child: const Text(
// // // //                             "LOGIN",
// // // //                             style: TextStyle(
// // // //                               fontSize: 16,
// // // //                               fontWeight: FontWeight.w800,
// // // //                               letterSpacing: 1.5,
// // // //                             ),
// // // //                           ),
// // // //                         ),
// // // //                       ),

// // // //                       const Padding(
// // // //                         padding: EdgeInsets.symmetric(vertical: 20),
// // // //                         child: Row(
// // // //                           children: [
// // // //                             Expanded(child: Divider()),
// // // //                             Padding(
// // // //                               padding: EdgeInsets.symmetric(horizontal: 10),
// // // //                               child: Text("OR", style: TextStyle(color: Colors.grey, fontSize: 12)),
// // // //                             ),
// // // //                             Expanded(child: Divider()),
// // // //                           ],
// // // //                         ),
// // // //                       ),

// // // //                       // Minimalist Phone Button
// // // //                       SizedBox(
// // // //                         width: double.infinity,
// // // //                         height: 55,
// // // //                         child: OutlinedButton.icon(
// // // //                           onPressed: () => Navigator.pushNamed(
// // // //                             context,
// // // //                             AppRoutes.phoneLogin,
// // // //                             arguments: role,
// // // //                           ),
// // // //                           icon: const Icon(Icons.phone_android_rounded, size: 20),
// // // //                           label: const Text("CONTINUE WITH PHONE"),
// // // //                           style: OutlinedButton.styleFrom(
// // // //                             foregroundColor: primaryMaroon,
// // // //                             side: const BorderSide(color: primaryMaroon, width: 1.5),
// // // //                             shape: RoundedRectangleBorder(
// // // //                               borderRadius: BorderRadius.circular(15),
// // // //                             ),
// // // //                           ),
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),

// // // //                 const Spacer(flex: 2),

// // // //                 // Register Link at the bottom
// // // //                 Row(
// // // //                   mainAxisAlignment: MainAxisAlignment.center,
// // // //                   children: [
// // // //                     const Text(
// // // //                       "New user? ",
// // // //                       style: TextStyle(color: Colors.white70, fontSize: 15),
// // // //                     ),
// // // //                     GestureDetector(
// // // //                       onTap: () => Navigator.pushNamed(context, AppRoutes.register),
// // // //                       child: const Text(
// // // //                         "Register Now",
// // // //                         style: TextStyle(
// // // //                           color: Colors.white,
// // // //                           fontSize: 15,
// // // //                           fontWeight: FontWeight.bold,
// // // //                           decoration: TextDecoration.underline,
// // // //                         ),
// // // //                       ),
// // // //                     ),
// // // //                   ],
// // // //                 ),
// // // //                 const SizedBox(height: 20),
// // // //               ],
// // // //             ),
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildTextField({
// // // //     required String hint,
// // // //     required IconData icon,
// // // //     bool isPass = false,
// // // //   }) {
// // // //     return TextField(
// // // //       obscureText: isPass,
// // // //       decoration: InputDecoration(
// // // //         prefixIcon: Icon(icon, color: primaryMaroon.withOpacity(0.7), size: 22),
// // // //         hintText: hint,
// // // //         hintStyle: TextStyle(color: Colors.grey[400], fontSize: 15),
// // // //         filled: true,
// // // //         fillColor: Colors.grey[50],
// // // //         contentPadding: const EdgeInsets.symmetric(vertical: 18),
// // // //         border: OutlineInputBorder(
// // // //           borderRadius: BorderRadius.circular(15),
// // // //           borderSide: BorderSide.none,
// // // //         ),
// // // //         enabledBorder: OutlineInputBorder(
// // // //           borderRadius: BorderRadius.circular(15),
// // // //           borderSide: BorderSide(color: Colors.grey[200]!, width: 1),
// // // //         ),
// // // //         focusedBorder: OutlineInputBorder(
// // // //           borderRadius: BorderRadius.circular(15),
// // // //           borderSide: const BorderSide(color: primaryMaroon, width: 1.5),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';
// // // import 'dart:ui'; // Glassmorphism ke liye
// // // import '../constants.dart';
// // // import '../routes.dart';

// // // class LoginScreen extends StatelessWidget {
// // //   final String role;
// // //   const LoginScreen({super.key, required this.role});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: const Color(0xFF2D0000), // Deep Dark Maroon
// // //       body: Stack(
// // //         children: [
// // //           // 1. Background Design Elements (Abstract circles for creative look)
// // //           Positioned(
// // //             top: -100,
// // //             right: -50,
// // //             child: _buildBackgroundCircle(250, primaryMaroon.withOpacity(0.3)),
// // //           ),
// // //           Positioned(
// // //             bottom: -50,
// // //             left: -50,
// // //             child: _buildBackgroundCircle(200, Colors.black.withOpacity(0.5)),
// // //           ),

// // //           // 2. Main Content
// // //           SafeArea(
// // //             child: Padding(
// // //               padding: const EdgeInsets.symmetric(horizontal: 24.0),
// // //               child: Column(
// // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // //                 children: [
// // //                   const SizedBox(height: 40),

// // //                   // Creative Header
// // //                   _buildHeader(),

// // //                   const SizedBox(height: 40),

// // //                   // Role Indicator Tag
// // //                   Container(
// // //                     padding: const EdgeInsets.symmetric(
// // //                       horizontal: 16,
// // //                       vertical: 8,
// // //                     ),
// // //                     decoration: BoxDecoration(
// // //                       color: primaryMaroon,
// // //                       borderRadius: BorderRadius.circular(20),
// // //                     ),
// // //                     child: Text(
// // //                       role.toUpperCase(),
// // //                       style: const TextStyle(
// // //                         color: Colors.white,
// // //                         fontWeight: FontWeight.bold,
// // //                         fontSize: 12,
// // //                         letterSpacing: 2,
// // //                       ),
// // //                     ),
// // //                   ),

// // //                   const SizedBox(height: 10),
// // //                   const Text(
// // //                     "Welcome Back",
// // //                     style: TextStyle(
// // //                       color: Colors.white,
// // //                       fontSize: 32,
// // //                       fontWeight: FontWeight.bold,
// // //                     ),
// // //                   ),
// // //                   const Text(
// // //                     "Please sign in to continue",
// // //                     style: TextStyle(color: Colors.white60, fontSize: 16),
// // //                   ),

// // //                   const Spacer(),

// // //                   // 3. Floating Login Card (Glassmorphism Effect)
// // //                   ClipRRect(
// // //                     borderRadius: BorderRadius.circular(30),
// // //                     child: BackdropFilter(
// // //                       filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
// // //                       child: Container(
// // //                         padding: const EdgeInsets.all(28),
// // //                         decoration: BoxDecoration(
// // //                           color: Colors.white.withOpacity(0.08),
// // //                           borderRadius: BorderRadius.circular(30),
// // //                           border: Border.all(
// // //                             color: Colors.white.withOpacity(0.1),
// // //                             width: 1.5,
// // //                           ),
// // //                         ),
// // //                         child: Column(
// // //                           children: [
// // //                             _buildModernField(
// // //                               hint: "Email",
// // //                               icon: Icons.alternate_email_rounded,
// // //                             ),
// // //                             const SizedBox(height: 20),
// // //                             _buildModernField(
// // //                               hint: "Password",
// // //                               icon: Icons.lock_outline_rounded,
// // //                               isPass: true,
// // //                             ),
// // //                             const SizedBox(height: 30),

// // //                             // Creative Action Button
// // //                             _buildLoginButton(context),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ),

// // //                   const SizedBox(height: 25),

// // //                   // Social/Phone Option
// // //                   Center(
// // //                     child: TextButton(
// // //                       onPressed: () => Navigator.pushNamed(
// // //                         context,
// // //                         AppRoutes.phoneLogin,
// // //                         arguments: role,
// // //                       ),
// // //                       child: Text(
// // //                         "Use Phone Number Instead",
// // //                         style: TextStyle(
// // //                           color: Colors.white.withOpacity(0.7),
// // //                           fontWeight: FontWeight.w500,
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ),

// // //                   const Spacer(),

// // //                   // Register Footer
// // //                   _buildFooter(context),
// // //                   const SizedBox(height: 20),
// // //                 ],
// // //               ),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   // --- Helper Widgets for Cleaner Code ---

// // //   Widget _buildBackgroundCircle(double size, Color color) {
// // //     return Container(
// // //       width: size,
// // //       height: size,
// // //       decoration: BoxDecoration(shape: BoxShape.circle, color: color),
// // //     );
// // //   }

// // //   Widget _buildHeader() {
// // //     return Row(
// // //       children: [
// // //         Container(
// // //           height: 50,
// // //           width: 5,
// // //           decoration: BoxDecoration(
// // //             color: primaryMaroon,
// // //             borderRadius: BorderRadius.circular(10),
// // //           ),
// // //         ),
// // //         const SizedBox(width: 15),
// // //         const Icon(Icons.bloodtype, color: Colors.white, size: 40),
// // //       ],
// // //     );
// // //   }

// // //   Widget _buildModernField({
// // //     required String hint,
// // //     required IconData icon,
// // //     bool isPass = false,
// // //   }) {
// // //     return TextField(
// // //       obscureText: isPass,
// // //       style: const TextStyle(color: Colors.white),
// // //       decoration: InputDecoration(
// // //         filled: true,
// // //         fillColor: Colors.white.withOpacity(0.05),
// // //         prefixIcon: Icon(icon, color: Colors.white70, size: 20),
// // //         hintText: hint,
// // //         hintStyle: const TextStyle(color: Colors.white38),
// // //         enabledBorder: OutlineInputBorder(
// // //           borderRadius: BorderRadius.circular(15),
// // //           borderSide: BorderSide(color: Colors.white.withOpacity(0.1)),
// // //         ),
// // //         focusedBorder: OutlineInputBorder(
// // //           borderRadius: BorderRadius.circular(15),
// // //           borderSide: const BorderSide(color: primaryMaroon, width: 2),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildLoginButton(BuildContext context) {
// // //     return GestureDetector(
// // //       onTap: () => AppRoutes.replaceWithHome(context),
// // //       child: Container(
// // //         height: 60,
// // //         width: double.infinity,
// // //         decoration: BoxDecoration(
// // //           gradient: const LinearGradient(
// // //             colors: [primaryMaroon, Color(0xFF900000)],
// // //           ),
// // //           borderRadius: BorderRadius.circular(18),
// // //           boxShadow: [
// // //             BoxShadow(
// // //               color: primaryMaroon.withOpacity(0.3),
// // //               blurRadius: 15,
// // //               offset: const Offset(0, 8),
// // //             ),
// // //           ],
// // //         ),
// // //         child: const Center(
// // //           child: Text(
// // //             "Sign In",
// // //             style: TextStyle(
// // //               color: Colors.white,
// // //               fontSize: 18,
// // //               fontWeight: FontWeight.bold,
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildFooter(BuildContext context) {
// // //     return Row(
// // //       mainAxisAlignment: MainAxisAlignment.center,
// // //       children: [
// // //         const Text(
// // //           "Don't have an account? ",
// // //           style: TextStyle(color: Colors.white54),
// // //         ),
// // //         GestureDetector(
// // //           onTap: () => Navigator.pushNamed(context, AppRoutes.register),
// // //           child: const Text(
// // //             "Create One",
// // //             style: TextStyle(
// // //               color: primaryMaroon,
// // //               fontWeight: FontWeight.bold,
// // //               decoration: TextDecoration.underline,
// // //             ),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'dart:ui';
// // import '../constants.dart';
// // import '../routes.dart';

// // class LoginScreen extends StatelessWidget {
// //   final String role;
// //   const LoginScreen({super.key, required this.role});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: const Color(0xFF2D0000),
// //       body: Stack(
// //         children: [
// //           // 1. Background Elements
// //           Positioned(
// //             top: -100,
// //             right: -50,
// //             child: _buildBackgroundCircle(250, primaryMaroon.withOpacity(0.3)),
// //           ),
// //           Positioned(
// //             bottom: -50,
// //             left: -50,
// //             child: _buildBackgroundCircle(200, Colors.black.withOpacity(0.5)),
// //           ),

// //           // 2. Main Content
// //           SafeArea(
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 // --- BACK NAVIGATION BUTTON ---
// //                 Padding(
// //                   padding: const EdgeInsets.only(left: 16, top: 10),
// //                   child: IconButton(
// //                     onPressed: () => Navigator.pop(context),
// //                     icon: Container(
// //                       padding: const EdgeInsets.all(8),
// //                       decoration: BoxDecoration(
// //                         color: Colors.white.withOpacity(0.1),
// //                         shape: BoxShape.circle,
// //                       ),
// //                       child: const Icon(
// //                         Icons.arrow_back_ios_new_rounded,
// //                         color: Colors.white,
// //                         size: 20,
// //                       ),
// //                     ),
// //                   ),
// //                 ),

// //                 Expanded(
// //                   child: Padding(
// //                     padding: const EdgeInsets.symmetric(horizontal: 24.0),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         const SizedBox(height: 20),

// //                         // Header & Logo
// //                         _buildHeader(),

// //                         const SizedBox(height: 30),

// //                         // Role Tag
// //                         Container(
// //                           padding: const EdgeInsets.symmetric(
// //                             horizontal: 14,
// //                             vertical: 6,
// //                           ),
// //                           decoration: BoxDecoration(
// //                             color: primaryMaroon,
// //                             borderRadius: BorderRadius.circular(12),
// //                           ),
// //                           child: Text(
// //                             role.toUpperCase(),
// //                             style: const TextStyle(
// //                               color: Colors.white,
// //                               fontWeight: FontWeight.bold,
// //                               fontSize: 11,
// //                               letterSpacing: 1.5,
// //                             ),
// //                           ),
// //                         ),

// //                         const SizedBox(height: 12),
// //                         const Text(
// //                           "Welcome Back",
// //                           style: TextStyle(
// //                             color: Colors.white,
// //                             fontSize: 34,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                         ),
// //                         const Text(
// //                           "Sign in to access your dashboard",
// //                           style: TextStyle(color: Colors.white60, fontSize: 16),
// //                         ),

// //                         const Spacer(),

// //                         // Login Card with Glass Effect
// //                         ClipRRect(
// //                           borderRadius: BorderRadius.circular(30),
// //                           child: BackdropFilter(
// //                             filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
// //                             child: Container(
// //                               padding: const EdgeInsets.all(24),
// //                               decoration: BoxDecoration(
// //                                 color: Colors.white.withOpacity(0.07),
// //                                 borderRadius: BorderRadius.circular(30),
// //                                 border: Border.all(
// //                                   color: Colors.white.withOpacity(0.1),
// //                                   width: 1,
// //                                 ),
// //                               ),
// //                               child: Column(
// //                                 children: [
// //                                   _buildModernField(
// //                                     hint: "Email",
// //                                     icon: Icons.alternate_email_rounded,
// //                                   ),
// //                                   const SizedBox(height: 20),
// //                                   _buildModernField(
// //                                     hint: "Password",
// //                                     icon: Icons.lock_outline_rounded,
// //                                     isPass: true,
// //                                   ),
// //                                   const SizedBox(height: 30),

// //                                   // Login Button
// //                                   _buildLoginButton(context),
// //                                 ],
// //                               ),
// //                             ),
// //                           ),
// //                         ),

// //                         const SizedBox(height: 20),

// //                         // Alternative Action
// //                         Center(
// //                           child: TextButton.icon(
// //                             onPressed: () => Navigator.pushNamed(
// //                               context,
// //                               AppRoutes.phoneLogin,
// //                               arguments: role,
// //                             ),
// //                             icon: const Icon(
// //                               Icons.phone_android_rounded,
// //                               size: 18,
// //                               color: Colors.white70,
// //                             ),
// //                             label: const Text(
// //                               "Login with Phone",
// //                               style: TextStyle(color: Colors.white70),
// //                             ),
// //                           ),
// //                         ),

// //                         const Spacer(),

// //                         // Footer
// //                         _buildFooter(context),
// //                         const SizedBox(height: 10),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   // Background Circles Helper
// //   Widget _buildBackgroundCircle(double size, Color color) {
// //     return Container(
// //       width: size,
// //       height: size,
// //       decoration: BoxDecoration(shape: BoxShape.circle, color: color),
// //     );
// //   }

// //   // Header Logo Helper
// //   Widget _buildHeader() {
// //     return Row(
// //       children: [
// //         Container(
// //           height: 40,
// //           width: 4,
// //           decoration: BoxDecoration(
// //             color: primaryMaroon,
// //             borderRadius: BorderRadius.circular(10),
// //           ),
// //         ),
// //         const SizedBox(width: 12),
// //         const Icon(Icons.bloodtype, color: Colors.white, size: 38),
// //       ],
// //     );
// //   }

// //   // Text Field Helper
// //   Widget _buildModernField({
// //     required String hint,
// //     required IconData icon,
// //     bool isPass = false,
// //   }) {
// //     return TextField(
// //       obscureText: isPass,
// //       style: const TextStyle(color: Colors.white),
// //       decoration: InputDecoration(
// //         filled: true,
// //         fillColor: Colors.white.withOpacity(0.05),
// //         prefixIcon: Icon(icon, color: Colors.white70, size: 20),
// //         hintText: hint,
// //         hintStyle: const TextStyle(color: Colors.white38),
// //         contentPadding: const EdgeInsets.symmetric(vertical: 18),
// //         enabledBorder: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(18),
// //           borderSide: BorderSide(color: Colors.white.withOpacity(0.1)),
// //         ),
// //         focusedBorder: OutlineInputBorder(
// //           borderRadius: BorderRadius.circular(18),
// //           borderSide: const BorderSide(color: primaryMaroon, width: 2),
// //         ),
// //       ),
// //     );
// //   }

// //   // Login Button Helper
// //   Widget _buildLoginButton(BuildContext context) {
// //     return InkWell(
// //       onTap: () => AppRoutes.replaceWithHome(context),
// //       borderRadius: BorderRadius.circular(18),
// //       child: Container(
// //         height: 60,
// //         width: double.infinity,
// //         decoration: BoxDecoration(
// //           gradient: const LinearGradient(
// //             colors: [primaryMaroon, Color(0xFF900000)],
// //           ),
// //           borderRadius: BorderRadius.circular(18),
// //           boxShadow: [
// //             BoxShadow(
// //               color: primaryMaroon.withOpacity(0.3),
// //               blurRadius: 12,
// //               offset: const Offset(0, 6),
// //             ),
// //           ],
// //         ),
// //         child: const Center(
// //           child: Text(
// //             "Login Now",
// //             style: TextStyle(
// //               color: Colors.white,
// //               fontSize: 18,
// //               fontWeight: FontWeight.bold,
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   // Footer Helper
// //   Widget _buildFooter(BuildContext context) {
// //     return Row(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         const Text("New here? ", style: TextStyle(color: Colors.white54)),
// //         GestureDetector(
// //           onTap: () => Navigator.pushNamed(context, AppRoutes.register),
// //           child: const Text(
// //             "Create Account",
// //             style: TextStyle(
// //               color: Colors.white,
// //               fontWeight: FontWeight.bold,
// //               decoration: TextDecoration.underline,
// //             ),
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import '../constants.dart';
// import '../routes.dart';

// class LoginScreen extends StatelessWidget {
//   final String role;
//   const LoginScreen({super.key, required this.role});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white, // Base color white rakha hai
//       body: Stack(
//         children: [
//           // 1. Top Decorative Maroon Section (Curved or Slanted)
//           Container(
//             height: MediaQuery.of(context).size.height * 0.4,
//             decoration: const BoxDecoration(
//               color: primaryMaroon,
//               borderRadius: BorderRadius.only(
//                 bottomRight: Radius.circular(100),
//               ),
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//                 colors: [primaryMaroon, Color(0xFF5D0000)],
//               ),
//             ),
//           ),

//           // 2. Content
//           SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // Back Button (White for contrast on Maroon)
//                 Padding(
//                   padding: const EdgeInsets.only(left: 10, top: 10),
//                   child: IconButton(
//                     onPressed: () => Navigator.pop(context),
//                     icon: const Icon(
//                       Icons.arrow_back_ios_new_rounded,
//                       color: Colors.white,
//                       size: 22,
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 30),

//                 // Main Heading Area
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 30),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Hello $role!",
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 38,
//                           fontWeight: FontWeight.bold,
//                           letterSpacing: 1,
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       Text(
//                         "Sign in to your account to continue",
//                         style: TextStyle(
//                           color: Colors.white.withOpacity(0.8),
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

//                 const Spacer(flex: 2),

//                 // 3. Login Form (Pure White Card with Shadow)
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 25),
//                   child: Container(
//                     padding: const EdgeInsets.all(25),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(30),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.08),
//                           blurRadius: 25,
//                           offset: const Offset(0, 10),
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       children: [
//                         _buildStyledField(
//                           hint: "Email Address",
//                           icon: Icons.email_outlined,
//                         ),
//                         const SizedBox(height: 20),
//                         _buildStyledField(
//                           hint: "Password",
//                           icon: Icons.lock_outline_rounded,
//                           isPass: true,
//                         ),

//                         const SizedBox(height: 10),
//                         Align(
//                           alignment: Alignment.centerRight,
//                           child: TextButton(
//                             onPressed: () {},
//                             child: const Text(
//                               "Forgot Password?",
//                               style: TextStyle(
//                                 color: Colors.grey,
//                                 fontSize: 13,
//                               ),
//                             ),
//                           ),
//                         ),

//                         const SizedBox(height: 15),

//                         // Login Button (The main focus)
//                         SizedBox(
//                           width: double.infinity,
//                           height: 58,
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: primaryMaroon,
//                               foregroundColor: Colors.white,
//                               elevation: 8,
//                               shadowColor: primaryMaroon.withOpacity(0.4),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(18),
//                               ),
//                             ),
//                             onPressed: () => AppRoutes.replaceWithHome(context),
//                             child: const Text(
//                               "SIGN IN",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                                 letterSpacing: 1.5,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 const Spacer(flex: 1),

//                 // 4. Bottom Options
//                 Center(
//                   child: Column(
//                     children: [
//                       GestureDetector(
//                         onTap: () => Navigator.pushNamed(
//                           context,
//                           AppRoutes.phoneLogin,
//                           arguments: role,
//                         ),
//                         child: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: const [
//                             Icon(
//                               Icons.phone_iphone,
//                               size: 18,
//                               color: primaryMaroon,
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               "Login with Phone",
//                               style: TextStyle(
//                                 color: primaryMaroon,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 15,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 30),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             "New user? ",
//                             style: TextStyle(color: Colors.grey),
//                           ),
//                           GestureDetector(
//                             onTap: () => Navigator.pushNamed(
//                               context,
//                               AppRoutes.register,
//                             ),
//                             child: const Text(
//                               "Register Now",
//                               style: TextStyle(
//                                 color: primaryMaroon,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 30),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildStyledField({
//     required String hint,
//     required IconData icon,
//     bool isPass = false,
//   }) {
//     return TextField(
//       obscureText: isPass,
//       decoration: InputDecoration(
//         prefixIcon: Icon(icon, color: Colors.grey[400], size: 22),
//         hintText: hint,
//         hintStyle: TextStyle(color: Colors.grey[400], fontSize: 15),
//         filled: true,
//         fillColor: Colors.grey[50],
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(18),
//           borderSide: BorderSide.none,
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(18),
//           borderSide: BorderSide(color: Colors.grey[200]!, width: 1),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(18),
//           borderSide: const BorderSide(color: primaryMaroon, width: 1.5),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../constants.dart';
import '../routes.dart';

class LoginScreen extends StatelessWidget {
  final String role;
  const LoginScreen({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA), // Professional Off-White
      body: Stack(
        children: [
          // 1. Top Decorative Background Section
          Container(
            height: MediaQuery.of(context).size.height * 0.42,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [primaryMaroon, Color(0xFF800000)],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
          ),

          // 2. Main Content
          SafeArea(
            child: Column(
              children: [
                // Back Button (Transparent Circle Style)
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Greeting & Role Header
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      const Text(
                        "Welcome Back",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.2),
                          ),
                        ),
                        child: Text(
                          "Logging in as $role",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const Spacer(),

                // 3. THE ATTRACTIVE LOGIN CARD
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25, 35, 25, 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 30,
                          offset: const Offset(0, 15),
                        ),
                        BoxShadow(
                          color: primaryMaroon.withOpacity(0.02),
                          spreadRadius: 2,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "SECURE LOGIN",
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 13,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 2.5,
                          ),
                        ),
                        const SizedBox(height: 30),

                        _buildCreativeField(
                          hint: "Email Address",
                          icon: Icons.alternate_email_rounded,
                        ),
                        const SizedBox(height: 20),
                        _buildCreativeField(
                          hint: "Password",
                          icon: Icons.lock_outline_rounded,
                          isPass: true,
                        ),

                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        // High-Performance Login Button
                        InkWell(
                          onTap: () => AppRoutes.replaceWithHome(context),
                          borderRadius: BorderRadius.circular(18),
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [primaryMaroon, Color(0xFF900000)],
                              ),
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: primaryMaroon.withOpacity(0.35),
                                  blurRadius: 12,
                                  offset: const Offset(0, 6),
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const Spacer(),

                // 4. FOOTER SECTION (Error Fixed)
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30,
                  ), // Fixed: EdgeInsets.only used
                  child: Column(
                    children: [
                      TextButton.icon(
                        onPressed: () => Navigator.pushNamed(
                          context,
                          AppRoutes.phoneLogin,
                          arguments: role,
                        ),
                        icon: const Icon(
                          Icons.phone_android_rounded,
                          size: 18,
                          color: primaryMaroon,
                        ),
                        label: const Text(
                          "Login with Phone",
                          style: TextStyle(
                            color: primaryMaroon,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "New user? ",
                            style: TextStyle(color: Colors.black45),
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(
                              context,
                              AppRoutes.register,
                            ),
                            child: const Text(
                              "Register Now",
                              style: TextStyle(
                                color: primaryMaroon,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // --- Styled Text Field Widget ---
  Widget _buildCreativeField({
    required String hint,
    required IconData icon,
    bool isPass = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF1F3F6),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextField(
        obscureText: isPass,
        style: const TextStyle(fontSize: 16, color: Colors.black87),
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: primaryMaroon.withOpacity(0.6),
            size: 22,
          ),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 18,
            horizontal: 20,
          ),
        ),
      ),
    );
  }
}
