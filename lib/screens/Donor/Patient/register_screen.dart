import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../routes.dart'; // <--- Ye import zaroori hai navigation ke liye

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Create Account",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryMaroon,
        elevation: 0,
        // Back button ko white karne ke liye
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Join our Community",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: primaryMaroon,
              ),
            ),
            const SizedBox(height: 10),
            const Text("Fill the details below to register."),
            const SizedBox(height: 30),

            _buildInputField("Full Name", Icons.person_outline),
            const SizedBox(height: 15),
            _buildInputField("Email Address", Icons.email_outlined),
            const SizedBox(height: 15),
            _buildInputField("Phone Number", Icons.phone_outlined),
            const SizedBox(height: 15),
            _buildInputField("Password", Icons.lock_outline, isPass: true),

            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryMaroon,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  // Register hone ke baad direct Home par bhejne ke liye
                  AppRoutes.replaceWithHome(context);
                },
                child: const Text(
                  "REGISTER",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            // Login par wapas jane ka link
            Center(
              child: TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  "Already have an account? Login",
                  style: TextStyle(
                    color: primaryMaroon,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(String hint, IconData icon, {bool isPass = false}) {
    return TextField(
      obscureText: isPass,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: primaryMaroon),
        hintText: hint,
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
