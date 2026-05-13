// import 'package:flutter/material.dart';
// import '../constants.dart';

// class RoleSelectionScreen extends StatefulWidget {
//   const RoleSelectionScreen({super.key});

//   @override
//   State<RoleSelectionScreen> createState() => _RoleSelectionScreenState();
// }

// class _RoleSelectionScreenState extends State<RoleSelectionScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _fadeAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 1200),
//       vsync: this,
//     );
//     _fadeAnimation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(gradient: splashGradient),
//         child: SafeArea(
//           child: FadeTransition(
//             opacity: _fadeAnimation,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24.0),
//               child: Column(
//                 children: [
//                   const SizedBox(height: 40),

//                   // Header
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Icon(
//                         Icons.bloodtype_rounded,
//                         color: whiteColor,
//                         size: 42,
//                       ),
//                       const SizedBox(width: 12),
//                       const Text(
//                         appName,
//                         style: TextStyle(
//                           fontSize: 28,
//                           fontWeight: FontWeight.bold,
//                           color: whiteColor,
//                           letterSpacing: 2,
//                         ),
//                       ),
//                     ],
//                   ),

//                   const SizedBox(height: 8),
//                   const Text(
//                     continueAs,
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: whiteColor70,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),

//                   const SizedBox(height: 50),

//                   // Role Card 1
//                   _buildRoleCard(
//                     icon: Icons.person_outline_rounded,
//                     title: donor,
//                     subtitle: donorDesc,
//                     color: primaryMaroon,
//                     delay: 200,
//                     onTap: () => Navigator.of(
//                       context,
//                     ).pushNamed('/login', arguments: 'Donor'),
//                   ),

//                   const SizedBox(height: 20),

//                   // Role Card 2
//                   _buildRoleCard(
//                     icon: Icons.groups_rounded,
//                     title: volunteer,
//                     subtitle: volunteerDesc,
//                     color: const Color(0xFF9F1D1D),
//                     delay: 400,
//                     onTap: () => Navigator.of(
//                       context,
//                     ).pushNamed('/login', arguments: 'Volunteer'),
//                   ),

//                   const SizedBox(height: 20),

//                   // Role Card 3
//                   _buildRoleCard(
//                     icon: Icons.admin_panel_settings_rounded,
//                     title: admin,
//                     subtitle: adminDesc,
//                     color: const Color(0xFF6B0F0F),
//                     delay: 600,
//                     onTap: () => Navigator.of(
//                       context,
//                     ).pushNamed('/login', arguments: 'Admin'),
//                   ),

//                   const Spacer(),

//                   // Footer
//                   const Text(
//                     savingLives,
//                     style: TextStyle(color: whiteColor70, fontSize: 14),
//                   ),
//                   const SizedBox(height: 30),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildRoleCard({
//     required IconData icon,
//     required String title,
//     required String subtitle,
//     required Color color,
//     required int delay,
//     required VoidCallback onTap,
//   }) {
//     return TweenAnimationBuilder<double>(
//       tween: Tween<double>(begin: 0, end: 1),
//       duration: Duration(milliseconds: 800 + delay),
//       curve: Curves.easeOutBack,
//       builder: (context, double value, child) {
//         return Transform.scale(
//           scale: value,
//           child: GestureDetector(
//             onTap: onTap,
//             child: Container(
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: color.withOpacity(0.25),
//                     blurRadius: 15,
//                     spreadRadius: 2,
//                     offset: const Offset(0, 8),
//                   ),
//                 ],
//               ),
//               child: Row(
//                 children: [
//                   Container(
//                     height: 65,
//                     width: 65,
//                     decoration: BoxDecoration(
//                       color: color.withOpacity(0.1),
//                       shape: BoxShape.circle,
//                     ),
//                     child: Icon(icon, size: 32, color: color),
//                   ),
//                   const SizedBox(width: 20),
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           title,
//                           style: const TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black87,
//                           ),
//                         ),
//                         const SizedBox(height: 6),
//                         Text(
//                           subtitle,
//                           style: TextStyle(
//                             fontSize: 15,
//                             color: Colors.grey[700],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Icon(Icons.arrow_forward_ios_rounded, color: color),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import '../constants.dart';

// class RoleSelectionScreen extends StatefulWidget {
//   const RoleSelectionScreen({super.key});

//   @override
//   State<RoleSelectionScreen> createState() => _RoleSelectionScreenState();
// }

// class _RoleSelectionScreenState extends State<RoleSelectionScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _fadeAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(milliseconds: 1200),
//       vsync: this,
//     );
//     _fadeAnimation = Tween<double>(
//       begin: 0.0,
//       end: 1.0,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(gradient: splashGradient),
//         child: SafeArea(
//           child: FadeTransition(
//             opacity: _fadeAnimation,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24.0),
//               child: Column(
//                 children: [
//                   const SizedBox(height: 40),

//                   // Header
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Icon(
//                         Icons.bloodtype_rounded,
//                         color: whiteColor,
//                         size: 42,
//                       ),
//                       const SizedBox(width: 12),
//                       const Text(
//                         appName,
//                         style: TextStyle(
//                           fontSize: 28,
//                           fontWeight: FontWeight.bold,
//                           color: whiteColor,
//                           letterSpacing: 2,
//                         ),
//                       ),
//                     ],
//                   ),

//                   const SizedBox(height: 8),
//                   const Text(
//                     continueAs,
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: whiteColor70,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),

//                   const SizedBox(height: 50),

//                   // Role Card 1
//                   _buildRoleCard(
//                     icon: Icons.person_outline_rounded,
//                     title: donor,
//                     subtitle: donorDesc,
//                     color: primaryMaroon,
//                     delay: 200,
//                     onTap: () => Navigator.of(
//                       context,
//                     ).pushNamed('/login', arguments: 'Donor'),
//                   ),

//                   const SizedBox(height: 20),

//                   // Role Card 2
//                   _buildRoleCard(
//                     icon: Icons.groups_rounded,
//                     title: volunteer,
//                     subtitle: volunteerDesc,
//                     color: const Color(0xFF9F1D1D),
//                     delay: 400,
//                     onTap: () => Navigator.of(
//                       context,
//                     ).pushNamed('/login', arguments: 'Volunteer'),
//                   ),

//                   const SizedBox(height: 20),

//                   // Role Card 3
//                   _buildRoleCard(
//                     icon: Icons.admin_panel_settings_rounded,
//                     title: admin,
//                     subtitle: adminDesc,
//                     color: const Color(0xFF6B0F0F),
//                     delay: 600,
//                     onTap: () => Navigator.of(
//                       context,
//                     ).pushNamed('/login', arguments: 'Admin'),
//                   ),

//                   const Spacer(),

//                   // Footer
//                   const Text(
//                     savingLives,
//                     style: TextStyle(color: whiteColor70, fontSize: 14),
//                   ),
//                   const SizedBox(height: 30),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildRoleCard({
//     required IconData icon,
//     required String title,
//     required String subtitle,
//     required Color color,
//     required int delay,
//     required VoidCallback onTap,
//   }) {
//     return TweenAnimationBuilder<double>(
//       tween: Tween<double>(begin: 0, end: 1),
//       duration: Duration(milliseconds: 800 + delay),
//       curve: Curves.easeOutBack,
//       builder: (context, double value, child) {
//         return Transform.scale(
//           scale: value,
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(24), // Thoda aur rounded
//               border: Border.all(
//                 color: color.withOpacity(0.15),
//                 width: 1.5,
//               ), // Premium border feel
//               boxShadow: [
//                 BoxShadow(
//                   color: color.withOpacity(0.12),
//                   blurRadius: 20, // Softer shadow
//                   spreadRadius: -2,
//                   offset: const Offset(0, 10),
//                 ),
//               ],
//             ),
//             child: Material(
//               color: Colors.transparent,
//               child: InkWell(
//                 onTap: onTap,
//                 borderRadius: BorderRadius.circular(24),
//                 splashColor: color.withOpacity(0.1),
//                 highlightColor: color.withOpacity(0.05),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 20,
//                     vertical: 22,
//                   ),
//                   child: Row(
//                     children: [
//                       // Modern Rounded Square Icon
//                       Container(
//                         height: 60,
//                         width: 60,
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             colors: [
//                               color.withOpacity(0.15),
//                               color.withOpacity(0.05)
//                             ],
//                             begin: Alignment.topLeft,
//                             end: Alignment.bottomRight,
//                           ),
//                           borderRadius: BorderRadius.circular(16),
//                         ),
//                         child: Icon(icon, size: 30, color: color),
//                       ),
//                       const SizedBox(width: 20),

//                       // Text Section
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               title,
//                               style: const TextStyle(
//                                 fontSize: 19,
//                                 fontWeight: FontWeight.w800,
//                                 color: Colors.black87,
//                                 letterSpacing: 0.3,
//                               ),
//                             ),
//                             const SizedBox(height: 6),
//                             Text(
//                               subtitle,
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 color: Colors.grey[600],
//                                 height: 1.3,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),

//                       // Trailing Arrow with background
//                       Container(
//                         padding: const EdgeInsets.all(8),
//                         decoration: BoxDecoration(
//                           color: color.withOpacity(0.08),
//                           shape: BoxShape.circle,
//                         ),
//                         child: Icon(
//                           Icons.arrow_forward_ios_rounded,
//                           color: color,
//                           size: 16,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../constants.dart';

class RoleSelectionScreen extends StatefulWidget {
  const RoleSelectionScreen({super.key});

  @override
  State<RoleSelectionScreen> createState() => _RoleSelectionScreenState();
}

class _RoleSelectionScreenState extends State<RoleSelectionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: splashGradient),
        child: SafeArea(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  const SizedBox(height: 10),

                  // Back Button added here
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: whiteColor,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.bloodtype_rounded,
                        color: whiteColor,
                        size: 42,
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        appName,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: whiteColor,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),
                  const Text(
                    continueAs,
                    style: TextStyle(
                      fontSize: 20,
                      color: whiteColor70,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 50),

                  // Role Card 1
                  _buildRoleCard(
                    icon: Icons.person_outline_rounded,
                    title: donor,
                    subtitle: donorDesc,
                    color: primaryMaroon,
                    delay: 200,
                    onTap: () => Navigator.of(
                      context,
                    ).pushNamed('/login', arguments: 'Donor'),
                  ),

                  const SizedBox(height: 20),

                  // Role Card 2
                  _buildRoleCard(
                    icon: Icons.groups_rounded,
                    title: volunteer,
                    subtitle: volunteerDesc,
                    color: const Color(0xFF9F1D1D),
                    delay: 400,
                    onTap: () => Navigator.of(
                      context,
                    ).pushNamed('/login', arguments: 'Volunteer'),
                  ),

                  const SizedBox(height: 20),

                  // Role Card 3
                  _buildRoleCard(
                    icon: Icons.admin_panel_settings_rounded,
                    title: admin,
                    subtitle: adminDesc,
                    color: const Color(0xFF6B0F0F),
                    delay: 600,
                    onTap: () => Navigator.of(
                      context,
                    ).pushNamed('/login', arguments: 'Admin'),
                  ),

                  const Spacer(),

                  // Footer
                  const Text(
                    savingLives,
                    style: TextStyle(color: whiteColor70, fontSize: 14),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRoleCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required int delay,
    required VoidCallback onTap,
  }) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: 800 + delay),
      curve: Curves.easeOutBack,
      builder: (context, double value, child) {
        return Transform.scale(
          scale: value,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: color.withOpacity(0.15), width: 1.5),
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.12),
                  blurRadius: 20,
                  spreadRadius: -2,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(24),
                splashColor: color.withOpacity(0.1),
                highlightColor: color.withOpacity(0.05),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 22,
                  ),
                  child: Row(
                    children: [
                      // Modern Rounded Square Icon
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              color.withOpacity(0.15),
                              color.withOpacity(0.05),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Icon(icon, size: 30, color: color),
                      ),
                      const SizedBox(width: 20),

                      // Text Section
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: const TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w800,
                                color: Colors.black87,
                                letterSpacing: 0.3,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              subtitle,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                                height: 1.3,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Trailing Arrow with background
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: color.withOpacity(0.08),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: color,
                          size: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
