import 'package:flutter/material.dart';
import 'package:tokoto/components/custom_appbar.dart';
import 'package:tokoto/signup_screen/signup_screen3.dart';

import '../components/custom_textfeild.dart';
import '../components/customelevatedbutton.dart';

class SignUpScreen2 extends StatelessWidget {
  const SignUpScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [ Column(
        children: [
          CustomAppBar(appBarText: "SignUp"),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Complete profile", style: TextStyle(
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
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: CustomTextField(icon: Icons.person, hintText: "Enter your first name",labelText: "First Name"),
          ),
    CustomTextField(icon: Icons.person, hintText: "Enter your last name",labelText: "Last Name"),
    CustomTextField(icon: Icons.phone, hintText: "Enter your phone number",labelText: "Phone Number"),
    CustomTextField(icon: Icons.location_city, hintText: "Enter your address",labelText: "Address"),

                SizedBox(width: 50,),

              ],
            ),


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
            child:   CustomElevatedButton(text: "Continue", nextScreen: SignUpScreen3()),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("By continuing your confirm that you \n      with our Term and Condition", style: TextStyle(
                color: Colors.grey[500]
              ),)
            ],
          )
        ],
      ),

    );
  }
}
