import 'package:flutter/material.dart';
import 'package:flutter_authentication/components/text_field_container.dart';
import 'package:flutter_authentication/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final Function onChanged;
  final String hint;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
          onChanged: (value) {},
          obscureText: true,
          decoration: InputDecoration(
            hintText: hint,
            icon: Icon(
              Icons.lock_outline,
              color: kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none,
          )),
    );
  }
}
