import 'package:eat/components/text_field_container.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.hintText = "PassWord",
    this.icon = Icons.visibility,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: this.onChanged,
        obscureText: true,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: this.hintText,
          icon: Icon(
            this.icon,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility, //可见性小眼睛图标
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
