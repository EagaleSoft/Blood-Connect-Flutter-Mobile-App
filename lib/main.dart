// import 'package:flutter/material.dart';
// import 'screens/splash_screen.dart';
// import 'constants.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: appName,
//       theme: ThemeData(
//         primaryColor: primaryMaroon,
//         useMaterial3: true,
//         appBarTheme: const AppBarTheme(
//           backgroundColor: primaryMaroon,
//           foregroundColor: whiteColor,
//         ),
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: primaryMaroon,
//             foregroundColor: whiteColor,
//           ),
//         ),
//       ),
//       home: const SplashScreen(), // ✅ Direct home
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// main.dart
import 'package:flutter/material.dart';
import 'constants.dart';
import 'routes.dart'; // Make sure to import your AppRoutes file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryMaroon,
        useMaterial3: true,
        // ... (your existing theme code)
      ),
      // 👇 ADD THESE TWO LINES
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
