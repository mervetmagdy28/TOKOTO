import 'package:flutter/material.dart';
import 'package:tokoto/components/custom_appbar.dart';
import 'package:tokoto/components/custom_textfeild.dart';
import 'package:tokoto/components/customelevatedbutton.dart';
import 'package:tokoto/signup_screen/signup_screen2.dart';

class SignUpScreen1 extends StatefulWidget {
  const SignUpScreen1({Key? key}) : super(key: key);

  @override
  State<SignUpScreen1> createState() => _SignUpScreen1State();
}

class _SignUpScreen1State extends State<SignUpScreen1> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [ Column(
          children: [
            CustomAppBar(appBarText: "Sign In"),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Welcome Back", style: TextStyle(
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
                Text("Sign in with your Email and password\n       or continue with social media" ,style: TextStyle(
                  color: Colors.grey[500]
                ),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: CustomTextField(icon: Icons.email, hintText: "Enter your email",labelText: "Email"),
            ),
            CustomTextField(icon: Icons.password, hintText: "Enter your password",labelText: "Password"),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Checkbox(
                      value: this.value,
                      onChanged: (bool ?value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                    ),
                  ),
                  Text("Remember me",style: TextStyle(
                    color: Colors.grey[500]
                  ),),
                  SizedBox(width: 50,),
                  Column(
                    children: [
                      Text("Forgot Password", style: TextStyle(
                        color: Colors.grey[500],

                      ),),
                      Container(
                        width: 140,
                        height: 2,
                        color: Colors.grey[400],
                      )
                    ],
                  ),
                ],
              ),
            ),

Padding(
  padding: const EdgeInsets.only(top: 30),
  child:   CustomElevatedButton(text: "Continue", nextScreen: SignUpScreen2()),
),
            Padding(
              padding: const EdgeInsets.only(top: 30),
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

            Padding(
              padding: const EdgeInsets.only(top: 50),
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
        ),
     ], )
    );
  }
}
