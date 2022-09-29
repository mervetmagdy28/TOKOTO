import 'package:flutter/material.dart';

import '../components/customelevatedbutton.dart';
import 'onboard_screen2.dart';

class OnboardScreen1 extends StatelessWidget {
  const OnboardScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("TOKOTO",style: TextStyle(
                    color: Color(0xFFF18140),
                    fontWeight: FontWeight.bold,
                    fontSize: 25
                ),)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome to ",style: TextStyle(
                color: Colors.grey[500],
              ),),
              Text("TOKOTO, ",style: TextStyle(
                color: Colors.grey[500],
                fontWeight: FontWeight.bold,

              ),),
              Text("Let's shop! ",style: TextStyle(
                color: Colors.grey[500],
              ),),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top:70),
            child: Row(
              children: [
                Image(image: AssetImage("assets/undraw_Online_shopping_re_k1sv.png"))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 180),
            child: Row(

              children: [
                Container(
                  width: 18,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Color(0xFFF18140),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: CustomElevatedButton(nextScreen: OnboardScreen2(),text: "Continue",),

          )
        ],
      ),
    );
  }
}
