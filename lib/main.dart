import 'package:eat/Screens/Welcome/welcome_screen.dart';
import 'package:eat/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //不显示处于debug状态的按钮
      title: 'Flutter Eat',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        primaryColorLight: kPrimaryLightColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(), //首页
    );
  }
}
