import 'package:eat/Screens/SignUp/components/background.dart';
import 'package:eat/components/already_have_an_account_check.dart';
import 'package:eat/components/rounded_button.dart';
import 'package:eat/components/rounded_password_field.dart';
import 'package:eat/components/text_field_container.dart';
import 'package:eat/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "SIGN UP",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
              decoration: TextDecoration.none,
            ),
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.4,
          ),
          RoundedInputField(
            hintText: "Your Email",
            icon: Icons.person,
            onChange: (value) {},
          ),
          RoundedPasswordField(
            hintText: "PassWord",
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SIGNUP",
            color: kPrimaryColor,
            textColor: Colors.white,
            press: () {},
          ),
          AlreadyAnAccountCheck(
            login: false,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("----------"),
              Text(
                "OR",
                style: TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
