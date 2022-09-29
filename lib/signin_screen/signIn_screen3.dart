import 'package:flutter/material.dart';
import 'package:tokoto/components/custom_appbar.dart';
import 'package:tokoto/components/customelevatedbutton.dart';

import '../onboard_screens/onboard_screen1.dart';

class SignInScreen3 extends StatelessWidget {
  const SignInScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              CustomAppBar(appBarText: "Login Success"),
              Padding(
                padding: const EdgeInsets.only(top:70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("assets/undraw_Login_re_4vu2.png"))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Login Success", style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: CustomElevatedButton(text: "Back to Home", nextScreen: OnboardScreen1()),
              )

            ],
          )
        ],
      ),
    );
  }
}
