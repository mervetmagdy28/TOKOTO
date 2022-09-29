import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:tokoto/components/custom_appbar.dart';

import '../components/customelevatedbutton.dart';
import '../signin_screen/signIn_screen1.dart';

class SignUpScreen3 extends StatefulWidget {
  const SignUpScreen3({Key? key}) : super(key: key);

  @override
  State<SignUpScreen3> createState() => _SignUpScreen3State();
}

class _SignUpScreen3State extends State<SignUpScreen3> {
  bool _onEditing = true;
  String? _code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
          children: [
           CustomAppBar(appBarText: "OTP Verification"),



            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("OTP Verification", style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("complete your profile or your account \n                  with social media" ,style: TextStyle(
                    color: Colors.grey[500]
                ),),
              ],
            ),

            SizedBox(width: 50,),

          ],
        ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VerificationCode(
                  textStyle: TextStyle( fontSize: 20.0, color: Colors.red[900] , ),
                  keyboardType: TextInputType.number,
                  underlineColor: Colors.amber,
                  length: 4,
                  cursorColor: Colors.blue,
                  onCompleted: (String value) {
                    setState(() {
                      _code = value;
                    }
                    );
                  },
                   onEditing: (bool value) {
                    setState(() {
                      _onEditing = value;
                    });
                    if (!_onEditing) FocusScope.of(context).unfocus();
                  },
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 100,horizontal: 30),
            child:  CustomElevatedButton(text: "Continue", nextScreen: SignInScreen1()),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("By continuing your confirm that you \n      with our Term and Condition", style: TextStyle(
                    color: Colors.grey[500]
                ),)
              ],
            ),
          )
        ],
      ),

    );
  }
}
