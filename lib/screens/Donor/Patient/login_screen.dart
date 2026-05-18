import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../routes.dart';

class LoginScreen extends StatelessWidget {
  final String role;
  const LoginScreen({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      body: Stack(
        children: [
          // Top Decorative Background
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

          SafeArea(
            child: Column(
              children: [
                // Back Button
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

                // Greeting
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
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white.withOpacity(0.2)),
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

                // Login Card
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(25, 35, 25, 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35),
                      boxShadow: [
                        BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 30, offset: const Offset(0, 15)),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "SECURE LOGIN",
                          style: TextStyle(color: Colors.black38, fontSize: 13, fontWeight: FontWeight.w800, letterSpacing: 2.5),
                        ),
                        const SizedBox(height: 30),

                        _buildCreativeField(hint: "Email Address", icon: Icons.alternate_email_rounded),
                        const SizedBox(height: 20),
                        _buildCreativeField(hint: "Password", icon: Icons.lock_outline_rounded, isPass: true),

                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text("Forgot Password?", style: TextStyle(color: Colors.grey, fontSize: 13)),
                          ),
                        ),

                        const SizedBox(height: 10),

                        // Login Button - Role Based Navigation
                        InkWell(
                          onTap: () {
                            if (role.toLowerCase() == "volunteer") {
                              AppRoutes.replaceWithVolunteerDashboard(context);
                            } else {
                              AppRoutes.replaceWithHome(context);
                            }
                          },
                          borderRadius: BorderRadius.circular(18),
                          child: Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [primaryMaroon, Color(0xFF900000)]),
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(color: primaryMaroon.withOpacity(0.35), blurRadius: 12, offset: const Offset(0, 6)),
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

                // Footer
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Column(
                    children: [
                      TextButton.icon(
                        onPressed: () => Navigator.pushNamed(context, AppRoutes.phoneLogin, arguments: role),
                        icon: const Icon(Icons.phone_android_rounded, size: 18, color: primaryMaroon),
                        label: const Text("Login with Phone", style: TextStyle(color: primaryMaroon, fontWeight: FontWeight.w700, fontSize: 15)),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("New user? ", style: TextStyle(color: Colors.black45)),
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(context, AppRoutes.register),
                            child: const Text(
                              "Register Now",
                              style: TextStyle(color: primaryMaroon, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
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

  Widget _buildCreativeField({required String hint, required IconData icon, bool isPass = false}) {
    return Container(
      decoration: BoxDecoration(color: const Color(0xFFF1F3F6), borderRadius: BorderRadius.circular(16)),
      child: TextField(
        obscureText: isPass,
        style: const TextStyle(fontSize: 16, color: Colors.black87),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: primaryMaroon.withOpacity(0.6), size: 22),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        ),
      ),
    );
  }
}