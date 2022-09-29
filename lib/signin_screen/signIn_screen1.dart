import 'package:flutter/material.dart';
import 'package:tokoto/components/custom_appbar.dart';
import 'package:tokoto/components/custom_textfeild.dart';
import 'package:tokoto/components/customelevatedbutton.dart';
import 'package:tokoto/signin_screen/signIn_screen2.dart';

class SignInScreen1 extends StatelessWidget {
  const SignInScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [ Column(
          children: [
            CustomAppBar(appBarText: "SignUp"),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Register Account", style: TextStyle(
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
                  Text("complete your profile or your account \n                  with social media" ,style: TextStyle(
                      color: Colors.grey[500]
                  ),),
                ],
              ),
            ),
            CustomTextField(hintText: "Enter your email", icon: Icons.email, labelText: "Email"),
            CustomTextField(hintText: "Enter your password", icon: Icons.password, labelText: "Password"),
            CustomTextField(hintText: "Re-enter your password", icon: Icons.password, labelText: "Confirm Password"),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: CustomElevatedButton(text: "Continue", nextScreen: SignInScreen2()),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    width: 50,
                    height: 50,
                    child: Image.asset("assets/search.png"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.grey[300],
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(

                      width: 50,
                      height: 50,
                      child: Image.asset("assets/facebook.png"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.grey[300],
                      ),

                    ),
                  ),
                  Container(

                    width: 50,
                    height: 50,
                    child: Image.asset("assets/twitter.png"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.grey[300],
                    ),

                  ),

                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("By continuing your confirm that you \n      with our Term and Condition", style: TextStyle(
                    color: Colors.grey[500]
                ),)
              ],
            ),
          ],
        ),
        ],
      ),
    );
  }
}

