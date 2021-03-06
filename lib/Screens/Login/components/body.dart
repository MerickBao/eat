import 'package:eat/Screens/Login/components/background.dart';
import 'package:eat/Screens/SignUp/sign_up_screen.dart';
import 'package:eat/components/already_have_an_account_check.dart';
import 'package:eat/components/rounded_button.dart';
import 'package:eat/components/rounded_password_field.dart';
import 'package:eat/components/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Expanded(
        child: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LOGIN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.3,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedInputField(
                icon: Icons.person,
                hintText: "Your Email",
                onChange: (value) {},
              ),
              RoundedPasswordField(
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {},
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              AlreadyAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen(); //跳转到注册页面
                      },
                    ),
                  );
                },
              ),
            ],
          )
        ]),
      ),
    );
  }
}
