import 'package:eat/components/text_field_container.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChange;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: this.onChange, //处理变化
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            this.icon,
            color: kPrimaryColor,
          ),
          border: InputBorder.none, //去掉输入框的下划线
        ),
      ),
    );
  }
}
