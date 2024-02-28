import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sms_africa/component/logo.dart';
import 'package:sms_africa/constants.dart';
import 'package:sms_africa/screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  static const String id = "registration_screen";

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
                      labelText: 'Fullname', hintText: 'Enter Fullname')),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                  decoration: kInputDecoration.copyWith(
                      labelText: 'Contact NO.', hintText: 'Enter Contact NO.')),
              SizedBox(
                height: 8.0,
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
              TextField(
                  obscureText: true,
                  decoration: kInputDecoration.copyWith(
                      labelText: 'Confirm Password',
                      hintText: 'Confirm Password')),
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context,)
                  },
                  child: Text(
                    "Register",
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
                      text: "Already have an account?",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF11468F),
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, LoginScreen.id);
                          }),
                  ]),
                ),
              ),
            ],
          )),
    );
  }
}
