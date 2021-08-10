import 'package:flutter/material.dart';
import 'package:flutter_authentication/constants.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Or",
              style:
                  TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w500),
            ),
          ),
          buildDivider()
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        height: 50.0,
        color: kPrimaryColor,
      ),
    );
  }
}
