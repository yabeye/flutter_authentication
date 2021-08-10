import 'package:flutter/material.dart';
import 'package:flutter_authentication/constants.dart';

class HaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function onChange;
  const HaveAnAccountCheck({
    Key? key,
    required this.login,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          (login) ? "Don't have an account?" : "Already have an account?",
          style: TextStyle(fontSize: 16, color: kPrimaryColor),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            onChange();
          },
          child: Text(
            (login) ? "Sign up" : "Log in",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
