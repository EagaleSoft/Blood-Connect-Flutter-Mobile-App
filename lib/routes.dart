// // // import 'package:flutter/material.dart';
// // // import 'screens/splash_screen.dart';
// // // import 'screens/role_selection_screen.dart';
// // // import 'screens/login_screen.dart';
// // // import 'screens/home_screen.dart';
// // // // import 'screens/dashboard_screen.dart';

// // // class AppRoutes {
// // //   // ============================================
// // //   // 🛣️ ROUTE NAMES
// // //   // ============================================
// // //   static const String splash = '/splash';
// // //   static const String roleSelection = '/role-selection';
// // //   static const String login = '/login';
// // //   static const String home = '/home';
// // //   // static const String dashboard = '/dashboard';

// // //   // ============================================
// // //   // 🗺️ ROUTE GENERATOR
// // //   // ============================================
// // //   static Route<dynamic> generateRoute(RouteSettings settings) {
// // //     switch (settings.name) {
// // //       case splash:
// // //         return MaterialPageRoute(builder: (_) => const SplashScreen());

// // //       case roleSelection:
// // //         return MaterialPageRoute(builder: (_) => const RoleSelectionScreen());

// // //       case login:
// // //         final String role = settings.arguments as String? ?? 'User';
// // //         return MaterialPageRoute(builder: (_) => LoginScreen(role: role));

// // //       case home:
// // //         return MaterialPageRoute(builder: (_) => const HomeScreen());

// // //       default:
// // //         return MaterialPageRoute(builder: (_) => const UnknownScreen());
// // //     }
// // //   }

// // //   // ============================================
// // //   // 🧭 NAVIGATION HELPER METHODS
// // //   // ============================================

// // //   // Go To Login with Role
// // //   static void goToLogin(BuildContext context, String role) {
// // //     Navigator.pushNamed(context, login, arguments: role);
// // //   }

// // //   // Go To Home
// // //   static void goToHome(BuildContext context) {
// // //     Navigator.pushNamed(context, home);
// // //   }

// // //   // Go To Role Selection
// // //   static void goToRoleSelection(BuildContext context) {
// // //     Navigator.pushNamed(context, roleSelection);
// // //   }

// // //   // Replace with Home
// // //   static void replaceWithHome(BuildContext context) {
// // //     Navigator.pushReplacementNamed(context, home);
// // //   }

// // //   // Replace with Login
// // //   static void replaceWithLogin(BuildContext context, String role) {
// // //     Navigator.pushReplacementNamed(context, login, arguments: role);
// // //   }

// // //   // Replace with Role Selection
// // //   static void replaceWithRoleSelection(BuildContext context) {
// // //     Navigator.pushReplacementNamed(context, roleSelection);
// // //   }

// // //   // Reset To Home
// // //   static void resetToHome(BuildContext context) {
// // //     Navigator.pushNamedAndRemoveUntil(context, home, (route) => false);
// // //   }

// // //   // Reset To Splash
// // //   static void resetToSplash(BuildContext context) {
// // //     Navigator.pushNamedAndRemoveUntil(context, splash, (route) => false);
// // //   }
// // // }

// // // // ============================================
// // // // ❓ UNKNOWN SCREEN (404)
// // // // ============================================
// // // class UnknownScreen extends StatelessWidget {
// // //   const UnknownScreen({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       body: Center(
// // //         child: Column(
// // //           mainAxisAlignment: MainAxisAlignment.center,
// // //           children: [
// // //             const Icon(Icons.error_outline, size: 100, color: Colors.red),
// // //             const SizedBox(height: 20),
// // //             const Text(
// // //               'Page Not Found',
// // //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
// // //             ),
// // //             const SizedBox(height: 20),
// // //             ElevatedButton(
// // //               onPressed: () => AppRoutes.replaceWithHome(context),
// // //               child: const Text('Go to Home'),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';
// // import 'screens/splash_screen.dart';
// // import 'screens/role_selection_screen.dart';
// // import 'screens/login_screen.dart';
// // import 'screens/home_screen.dart';
// // import 'screens/register_screen.dart'; // Nayi file import karein

// // class AppRoutes {
// //   // 🛣️ ROUTE NAMES
// //   static const String splash = '/splash';
// //   static const String roleSelection = '/role-selection';
// //   static const String login = '/login';
// //   static const String home = '/home';
// //   static const String register = '/register'; // Add kiya

// //   // 🗺️ ROUTE GENERATOR
// //   static Route<dynamic> generateRoute(RouteSettings settings) {
// //     switch (settings.name) {
// //       case splash:
// //         return MaterialPageRoute(builder: (_) => const SplashScreen());

// //       case roleSelection:
// //         return MaterialPageRoute(builder: (_) => const RoleSelectionScreen());

// //       case login:
// //         final String role = settings.arguments as String? ?? 'User';
// //         return MaterialPageRoute(builder: (_) => LoginScreen(role: role));

// //       case home:
// //         return MaterialPageRoute(builder: (_) => const HomeScreen());

// //       case register:
// //         return MaterialPageRoute(builder: (_) => const RegisterScreen());

// //       default:
// //         return MaterialPageRoute(builder: (_) => const UnknownScreen());
// //     }
// //   }

// //   // 🧭 NAVIGATION HELPER METHODS
// //   static void goToRegister(BuildContext context) {
// //     Navigator.pushNamed(context, register);
// //   }

// //   static void replaceWithHome(BuildContext context) {
// //     Navigator.pushReplacementNamed(context, home);
// //   }
// // }

// // // ❓ UNKNOWN SCREEN (404)
// // class UnknownScreen extends StatelessWidget {
// //   const UnknownScreen({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //     return const Scaffold(body: Center(child: Text('Page Not Found')));
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'screens/splash_screen.dart';
// import 'screens/role_selection_screen.dart';
// import 'screens/login_screen.dart';
// import 'screens/home_screen.dart';
// import 'screens/register_screen.dart';
// import 'screens/phonelogin_screen.dart'; // 1. Nayi file import ki

// class AppRoutes {
//   // 🛣️ ROUTE NAMES
//   static const String splash = '/splash';
//   static const String roleSelection = '/role-selection';
//   static const String login = '/login';
//   static const String home = '/home';
//   static const String register = '/register';
//   static const String phoneLogin =
//       '/phone-login'; // 2. Phone Login Name add kiya

//   // 🗺️ ROUTE GENERATOR
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case splash:
//         return MaterialPageRoute(builder: (_) => const SplashScreen());

//       case roleSelection:
//         return MaterialPageRoute(builder: (_) => const RoleSelectionScreen());

//       case login:
//         final String role = settings.arguments as String? ?? 'User';
//         return MaterialPageRoute(builder: (_) => LoginScreen(role: role));

//       case home:
//         return MaterialPageRoute(builder: (_) => const HomeScreen());

//       case register:
//         return MaterialPageRoute(builder: (_) => const RegisterScreen());

//       case phoneLogin: // 3. Phone Login ka Case add kiya
//         final String role = settings.arguments as String? ?? 'User';
//         return MaterialPageRoute(builder: (_) => PhoneLoginPage(role: role));

//       default:
//         return MaterialPageRoute(builder: (_) => const UnknownScreen());
//     }
//   }

//   // 🧭 NAVIGATION HELPER METHODS
//   static void goToRegister(BuildContext context) {
//     Navigator.pushNamed(context, register);
//   }

//   // 4. Phone Login par jaane ka method
//   static void goToPhoneLogin(BuildContext context, String role) {
//     Navigator.pushNamed(context, phoneLogin, arguments: role);
//   }

//   static void replaceWithHome(BuildContext context) {
//     Navigator.pushReplacementNamed(context, home);
//   }
// }

// // ❓ UNKNOWN SCREEN (404)
// class UnknownScreen extends StatelessWidget {
//   const UnknownScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(body: Center(child: Text('Page Not Found')));
//   }
// }
import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/role_selection_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/register_screen.dart';
import 'screens/phonelogin_screen.dart';
import 'screens/otp_screen.dart'; // ← Yeh import add karo

class AppRoutes {
  // 🛣️ ROUTE NAMES
  static const String splash = '/splash';
  static const String roleSelection = '/role-selection';
  static const String login = '/login';
  static const String home = '/home';
  static const String register = '/register';
  static const String phoneLogin = '/phone-login';
  static const String otp = '/otp'; // ← Naya route add kiya

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

      case register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      case phoneLogin:
        final String role = settings.arguments as String? ?? 'User';
        return MaterialPageRoute(builder: (_) => PhoneLoginPage(role: role));

      case otp: // ← Naya case
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

  // Naya Helper Method
  static void goToOtp(BuildContext context, String phoneNumber) {
    Navigator.pushNamed(context, otp, arguments: phoneNumber);
  }

  static void replaceWithHome(BuildContext context) {
    Navigator.pushReplacementNamed(context, home);
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
