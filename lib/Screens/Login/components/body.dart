import 'package:flutter/material.dart';
import 'package:flutter_authentication/Screens/Login/components/background.dart';
import 'package:flutter_authentication/Screens/Signup/signup_screen.dart';
import 'package:flutter_authentication/components/have_an_account_check.dart';
import 'package:flutter_authentication/components/rounded_button.dart';
import 'package:flutter_authentication/components/rounded_input_field.dart';
import 'package:flutter_authentication/components/rounded_password_field.dart';
import 'package:flutter_authentication/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Log in",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.3,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedTextField(
                  hintText: "Username",
                  icon: Icons.person_outline,
                  onChanged: () {}),
              RoundedPasswordField(
                onChanged: (value) {},
                hint: "Password",
              ),
              Text(
                "Fogot password?",
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RoundedButton(
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUpScreen();
                    }));
                  },
                  text: "Log in",
                  bgColor: kPrimaryColor,
                  textColor: Colors.white),
              SizedBox(
                height: size.height * 0.02,
              ),
              HaveAnAccountCheck(
                login: true,
                onChange: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
