import 'package:flutter/material.dart';
import 'package:flutter_authentication/components/text_field_container.dart';
import 'package:flutter_authentication/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final Function onChanged;
  final String hint;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.hint,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool isPasswordVisble = true;

  _changePasswordVisiblity() {
    setState(() {
      isPasswordVisble = !isPasswordVisble;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
          onChanged: (value) {},
          obscureText: isPasswordVisble,
          decoration: InputDecoration(
            hintText: widget.hint,
            icon: Icon(
              Icons.lock_outline,
              color: kPrimaryColor,
            ),
            suffixIcon: IconButton(
                // Here the functionality(hide/show) is required //
                onPressed: _changePasswordVisiblity,
                icon: Icon(Icons.visibility)),
            border: InputBorder.none,
          )),
    );
  }
}
