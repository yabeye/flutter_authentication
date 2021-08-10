import 'package:flutter/material.dart';
import 'package:flutter_authentication/components/text_field_container.dart';
import 'package:flutter_authentication/constants.dart';

class RoundedTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Function onChanged;
  const RoundedTextField(
      {Key? key,
      required this.hintText,
      required this.icon,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(
            this.icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
