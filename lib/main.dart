import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intern_app/navigation_menu.dart';
import 'package:intern_app/screens/announcementsScreen/announcements_screen.dart';
import 'package:intern_app/screens/auth/loginScreen/login_screen.dart';
import 'package:intern_app/screens/auth/signUpScreen/signUp_Screen.dart';
//import 'screens/login_screen.dart';
import 'screens/dashboardScreen/dashboard_screen.dart';
import 'screens/leaderboardScreen/leaderboard_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intern App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginScreen(),
      routes: {
        '/dashboard': (context) => const DashboardScreen(),
        '/leaderboard': (context) => const LeaderboardScreen(),
        '/announcements': (context) => const AnnouncementsScreen(),
        '/navigationmenu': (context) => const NavigationMenu(),
        '/loginScreen': (context) => const LoginScreen(),
        '/signUpScreen': (context) => const SignupScreen(),
      },
    );
  }
}