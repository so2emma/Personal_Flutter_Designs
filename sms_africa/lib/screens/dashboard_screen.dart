import 'package:flutter/material.dart';
import 'package:sms_africa/component/logo.dart';
import 'package:sms_africa/component/sideNav.dart';
import 'package:sms_africa/constants.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  static const String id = "dashboard_screen";

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteLight,
      appBar: AppBar(
        backgroundColor: kWhiteLight,
        title: Logo(),
      ),
      drawer: Side_Navigation(),
    );
  }
}
