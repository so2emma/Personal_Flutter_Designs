import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sms_africa/component/logo.dart';
import 'package:sms_africa/constants.dart';
import 'package:sms_africa/screens/dashboard_screen.dart';
import 'package:sms_africa/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String id = "login_screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFEEEEEE),
      body: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Logo(),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                  decoration: kInputDecoration.copyWith(
                      labelText: 'Email', hintText: 'Enter Email')),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                  obscureText: true,
                  decoration: kInputDecoration.copyWith(
                      labelText: 'Password', hintText: 'Enter Password')),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, DashboardScreen.id);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(200, 50),
                      backgroundColor: Color(0xFF11468F)),
                ),
              ),
              Center(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Don't have an account yet?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                        text: 'Register',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF11468F),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, RegistrationScreen.id);
                          }),
                  ]),
                ),
              ),
            ],
          )),
    );
  }
}
