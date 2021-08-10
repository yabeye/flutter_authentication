import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_authentication/Screens/Login/login_screen.dart';
import 'package:flutter_authentication/Screens/Signup/signup_screen.dart';
import 'package:flutter_authentication/Screens/Welcome/components/background.dart';
import 'package:flutter_authentication/components/rounded_button.dart';
import 'package:flutter_authentication/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Yabegram",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: kPrimaryColor,
                letterSpacing: 2.5,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              text: "Log in",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
              bgColor: kPrimaryColor,
              textColor: Colors.white,
            ),
            RoundedButton(
              text: "Sign up",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUpScreen();
                }));
              },
              bgColor: kPrimaryLightColor,
              textColor: Colors.black54,
            ),
          ],
        ),
      ),
    );
  }
}
