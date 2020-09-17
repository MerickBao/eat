import 'package:eat/Screens/Login/login_screen.dart';
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
      child: ListView(children: [
        Container(
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
                height: size.height * 0.35,
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
              SizedBox(
                height: 10,
              ),
              AlreadyAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
              ),
              SizedBox(
                height: 15,
              ),
              BottomLoginOptions(size: size), //底部登陆选项
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    svgPath: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocialIcon(
                    svgPath: "assets/icons/google-plus.svg",
                    press: () {},
                  ),
                  SocialIcon(
                    svgPath: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String svgPath;
  final Function press;
  const SocialIcon({
    Key key,
    this.svgPath = "assets/icons/facebook.svg",
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.3,
          color: kPrimaryColor,
        ),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        this.svgPath,
        height: 20,
        width: 20,
      ),
    );
  }
}

class BottomLoginOptions extends StatelessWidget {
  const BottomLoginOptions({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      child: Row(children: [
        DividerBulider(),
        Text(
          "OR",
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600),
        ),
        DividerBulider(),
      ]),
    );
  }
}

class DividerBulider extends StatelessWidget {
  const DividerBulider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        //分割线
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }
}
