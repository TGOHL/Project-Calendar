import 'package:flutter/material.dart';
import 'package:project_calendar/screens/home/home_layout.dart';
import 'package:project_calendar/screens/login/login_layout.dart';

class AppRouter {
  static Map<String, Widget Function(dynamic)> router() {
    return {
      '/': (ctx) => const LoginScreen(),
      LoginScreen.routeName: (ctx) => const LoginScreen(),
      HomeScreen.routeName: (ctx) => const HomeScreen(),
    };
  }
}
