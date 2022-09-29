import 'package:flutter/material.dart';
import 'package:tokoto/components/custom_appbar.dart';
import 'package:tokoto/components/custom_textfeild.dart';
import 'package:tokoto/components/customelevatedbutton.dart';
import 'package:tokoto/signin_screen/signIn_screen3.dart';

class SignInScreen2 extends StatelessWidget {
  const SignInScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              CustomAppBar(appBarText: "Forgot Password"),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Forgot Password", style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("please enter your email to send \n           a verification code" ,style: TextStyle(
                        color: Colors.grey[500]
                    ),),
                  ],
                ),
              ),
              CustomTextField(hintText: "Enter your email", icon: Icons.email, labelText: "Email"),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: CustomElevatedButton(text: "continue", nextScreen: SignInScreen3()),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ", style: TextStyle(
                      color: Colors.grey[500],
                    ),),
                    Text("Sign Up", style: TextStyle(
                      color: Color(0xFFF18140),
                    ),)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
