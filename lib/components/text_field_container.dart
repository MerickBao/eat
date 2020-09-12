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

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29), //边缘四角的弧度
      ),
      child: child,
    );
  }
}
