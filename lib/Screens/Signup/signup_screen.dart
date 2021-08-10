import 'package:flutter/material.dart';
import 'package:flutter_authentication/Screens/Login/login_screen.dart';
import 'package:flutter_authentication/Screens/Signup/components/background.dart';
import 'package:flutter_authentication/Screens/Signup/components/or_divider.dart';
import 'package:flutter_authentication/components/have_an_account_check.dart';
import 'package:flutter_authentication/components/rounded_button.dart';
import 'package:flutter_authentication/components/rounded_input_field.dart';
import 'package:flutter_authentication/components/rounded_password_field.dart';
import 'package:flutter_authentication/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isUserAgreedToTerms = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Background(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: kPrimaryColor,
                  ),
                ),
                SizedBox(
                  width: size.width * .1,
                ),
                SvgPicture.asset(
                  "assets/icons/signup.svg",
                  height: size.height * 0.2,
                ),
              ],
            ),
            /*
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.25,
            ),*/
            SizedBox(
              height: 10,
            ),
            RoundedTextField(
                hintText: "enter username",
                icon: Icons.person_outline,
                onChanged: () {}),
            RoundedPasswordField(
              onChanged: () {},
              hint: "Password",
            ),
            RoundedPasswordField(
              onChanged: () {},
              hint: "Repeat password",
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                    activeColor: kPrimaryColor,
                    value: isUserAgreedToTerms,
                    onChanged: (value) {
                      setState(() {
                        isUserAgreedToTerms = !isUserAgreedToTerms;
                      });
                    }),
                Text("I agree with the terms and conditions."),
              ],
            ),
            RoundedButton(
                text: "Sign up",
                press: () {},
                bgColor: kPrimaryColor,
                textColor: Colors.white),
            SizedBox(
              height: 15,
            ),
            HaveAnAccountCheck(
                login: false,
                onChange: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                }),
            OrDivider(),
            // Signup using 3rd parties //
            ThirdPartySignup()
          ],
        )),
      ),
    );
  }
}

class ThirdPartySignup extends StatelessWidget {
  const ThirdPartySignup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildOtherAccountWidget('facebook'),
        buildOtherAccountWidget('twitter'),
        buildOtherAccountWidget('google-plus'),
      ],
    );
  }

  Widget buildOtherAccountWidget(String accountName) {
    return GestureDetector(
      child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryLightColor),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            "assets/icons/$accountName.svg",
            width: 20,
            height: 20,
          )),
    );
  }
}
