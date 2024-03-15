import 'package:fixit/src/data/app_navigation.dart';
import 'package:fixit/src/data/app_size.dart';
import 'package:fixit/views/login_screen.dart';
import 'package:flutter/material.dart';
import '../components/auth_button.dart';
import '../components/custom_divider.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome Back To',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
                color: Color(0xff1B3A56),
              ),
            ),
            const Text(
              'Fixit !',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xff1B3A56),
              ),
            ),
            Image.asset(
              'assets/images/app_logo.png',
            ),
            AuthButton(
              isHollow: true,
              onTap: () {
                AppNavigation.pushR(context, LoginScreen());
              },
              title: 'SIGN IN',
            ),
            AuthButton(
              isHollow: false,
              onTap: () {},
              title: 'SIGN UP',
            ),
            SizedBox(
              height: PhoneSize.phoneHeight(context) * 0.025,
            ),
            const CustomDivider(),
            SizedBox(
              height: PhoneSize.phoneHeight(context) * 0.05,
            ),
            Image.asset(
              'assets/icons/google.png',
            ),
            SizedBox(
              height: PhoneSize.phoneHeight(context) * 0.03,
            ),
            const Text(
              'Sign In With Another Account',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xffC1BEBE),
              ),
            )
          ],
        ),
      ),
    );
  }
}
