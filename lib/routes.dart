import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/role_selection_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/register_screen.dart';
import 'screens/phonelogin_screen.dart';
import 'screens/otp_screen.dart';
import 'screens/Volunteer/Volunteer_Dashboard.dart';

class AppRoutes {
  // 🛣️ ROUTE NAMES
  static const String splash = '/splash';
  static const String roleSelection = '/role-selection';
  static const String login = '/login';
  static const String home = '/home';
  static const String register = '/register';
  static const String phoneLogin = '/phone-login';
  static const String otp = '/otp';
  static const String volunteerDashboard = '/volunteer_dashboard';

  // 🗺️ ROUTE GENERATOR
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case roleSelection:
        return MaterialPageRoute(builder: (_) => const RoleSelectionScreen());

      case login:
        final String role = settings.arguments as String? ?? 'User';
        return MaterialPageRoute(builder: (_) => LoginScreen(role: role));

      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case volunteerDashboard:
        return MaterialPageRoute(
          builder: (_) => const VolunteerDashboardScreen(),
        );

      case register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      case phoneLogin:
        final String role = settings.arguments as String? ?? 'User';
        return MaterialPageRoute(builder: (_) => PhoneLoginPage(role: role));

      case otp:
        final String phoneNumber = settings.arguments as String? ?? '';
        return MaterialPageRoute(
          builder: (_) => OtpScreen(phoneNumber: phoneNumber),
        );

      default:
        return MaterialPageRoute(builder: (_) => const UnknownScreen());
    }
  }

  // 🧭 NAVIGATION HELPER METHODS
  static void goToRegister(BuildContext context) {
    Navigator.pushNamed(context, register);
  }

  static void goToPhoneLogin(BuildContext context, String role) {
    Navigator.pushNamed(context, phoneLogin, arguments: role);
  }

  static void goToOtp(BuildContext context, String phoneNumber) {
    Navigator.pushNamed(context, otp, arguments: phoneNumber);
  }

  static void replaceWithHome(BuildContext context) {
    Navigator.pushReplacementNamed(context, home);
  }

  // New Helper Method for Volunteer
  static void replaceWithVolunteerDashboard(BuildContext context) {
    Navigator.pushReplacementNamed(context, volunteerDashboard);
  }
}

// Unknown Screen
class UnknownScreen extends StatelessWidget {
  const UnknownScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Page Not Found')));
  }
}
