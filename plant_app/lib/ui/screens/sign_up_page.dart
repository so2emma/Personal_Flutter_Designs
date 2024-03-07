import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plant_app/ui/screens/widget/custom_textField.dart';
import 'package:plant_app/ui/sign_in_page.dart';

import '../../constants.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/signup.png'),
              const Text(
                'Sign Up',
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomTextField(
                obscureText: false,
                icon: Icons.alternate_email,
                hintText: 'Enter Email',
              ),
              const CustomTextField(
                obscureText: false,
                icon: Icons.person,
                hintText: 'Enter Full name',
              ),
              const CustomTextField(
                obscureText: true,
                icon: Icons.lock,
                hintText: 'Enter Password',
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: const Center(
                      child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('OR'),
                  ),
                  Expanded(child: Divider())
                ],
              ),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Constants.primaryColor),
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 30,
                      child: Image.asset('assets/images/google.png'),
                    ),
                    Text(
                      'Sign up with Google',
                      style: TextStyle(
                          color: Constants.blackColor, fontSize: 18.0),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const SignIn(),
                          type: PageTransitionType.bottomToTop));
                },
                child: Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: 'Have an Account? ',
                      style: TextStyle(color: Constants.blackColor),
                    ),
                    TextSpan(
                      text: ' Login',
                      style: TextStyle(color: Constants.primaryColor),
                    ),
                  ])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
