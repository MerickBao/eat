import 'package:eat/Screens/Login/login_screen.dart';
import 'package:eat/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  String get assets => null;

  @override
  Widget build(BuildContext context) {
    //提供屏幕的长和宽
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        //SingleChildScrollView:A box in which a single widget can be scrolled.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "LOGIN",
              textColor: Colors.black,
              color: kPrimaryLightColor,
              press: () {},
            )
          ],
        ),
      ),
    );
  }
}

// ctrl + . 可以快速将容器转化为widget
