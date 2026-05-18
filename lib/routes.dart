import 'package:flutter/material.dart';
import 'screens/Donor/Patient/splash_screen.dart';
import 'screens/Donor/Patient/role_selection_screen.dart';
import 'screens/Donor/Patient/login_screen.dart';
import 'screens/Donor/Patient/home_screen.dart';
import 'screens/Donor/Patient/register_screen.dart';
import 'screens/Donor/Patient/phonelogin_screen.dart';
import 'screens/Donor/Patient/otp_screen.dart';
import 'screens/Volunteer/Volunteer_Dashboard.dart';
import 'screens/Volunteer/Blood_Request_Management_Screen.dart';
import 'screens/Volunteer/Donor_Data_Screen.dart';
import 'screens/Volunteer/Certificate_Generation_Screen.dart';
import 'screens/Volunteer/Volunteer_Profile_Screen.dart';
import 'screens/Volunteer/Help_Support_Page.dart';

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
  static const String bloodRequestManagement = '/blood-request-management';
  static const String donorData = '/donor-data';
  static const String certificateGeneration = '/certificate-generation';
  static const String volunteerProfile = '/volunteer-profile';
  static const String volunteerSettings = '/volunteer-settings';
  static const String helpSupport = '/help-support';

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

      case volunteerDashboard:
        return MaterialPageRoute(
          builder: (_) => const VolunteerDashboardScreen(),
        );

      case bloodRequestManagement:
        return MaterialPageRoute(
          builder: (_) => const BloodRequestManagementScreen(),
        );

      case donorData:
        return MaterialPageRoute(builder: (_) => const DonorDataScreen());

      case certificateGeneration:
        return MaterialPageRoute(
          builder: (_) => const CertificateGenerationScreen(),
        );

      case volunteerProfile:
        return MaterialPageRoute(
          builder: (_) => const VolunteerProfileScreen(),
        );

      case volunteerSettings:
        return MaterialPageRoute(builder: (_) => const HelpSupportScreen());

      case helpSupport:
        return MaterialPageRoute(builder: (_) => const HelpSupportScreen());

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
