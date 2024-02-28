import 'package:flutter/material.dart';
import 'package:sms_africa/screens/dashboard_screen.dart';
import 'package:sms_africa/screens/login_screen.dart';
import 'package:sms_africa/screens/register_screen.dart';
import 'package:sms_africa/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: DashboardScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        DashboardScreen.id: (context) => DashboardScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
      home: WelcomeScreen(),
    );
  }
}
