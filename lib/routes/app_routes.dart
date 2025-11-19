import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/signature_screen.dart';

class AppRoutes {
  static const String initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'signature': (BuildContext context) => const SignatureScreen(),
  };
}
