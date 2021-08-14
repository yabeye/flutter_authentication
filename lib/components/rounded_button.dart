import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color bgColor, textColor;
  const RoundedButton(
      {Key? key,
      required this.text,
      required this.press,
      required this.bgColor,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: TextButton(
        onPressed: () {
          // ignore: unnecessary_statements
          this.press();
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            width: 300,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 13),
            color: this.bgColor,
            child: Text(
              this.text,
              style:
                  TextStyle(color: this.textColor, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        style: TextButton.styleFrom(
            padding: EdgeInsets.all(0),
            textStyle: TextStyle(
              fontSize: 25,
            )),
      ),
    );
  }
}
