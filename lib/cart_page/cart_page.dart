

import 'package:flutter/material.dart';
import 'package:tokoto/components/custom_row.dart';
import 'package:tokoto/components/customelevatedbutton.dart';

import '../components/custom_appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomAppBar( appBarText: '                  Your Cart\n                   4 items',),
          Padding(
            padding: const EdgeInsets.all(23.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Wano Store", style: TextStyle(fontSize: 22,),),
                    
                    CustomRow(price: 64.99, description: "Wireless Controller for PS4", image: "assets/158838-headphones-review-apple-airpods-3rd-generation-review-product-shots-image25-cgpbkmwpfd.jpg"),
                    CustomRow(price: 20000.5, description: "Labtop HP", image: "assets/c06986470_390x286.jpg")
                  ],
                ),
                
              ],
            ),
          ),

        ],
      ),
      bottomNavigationBar: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(0,-10)
            )
          ]
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15 , bottom: 10),
              child: Row(
                 children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Icon(Icons.newspaper, color: Colors.orangeAccent,size: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Text("Add voucher code ", style: TextStyle(
                      color: Colors.grey, fontSize: 16
                    ),),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,)
                ],
              ),
            ),
            Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text("Total:", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15
                    ),),
                    Text("\$339.5"),
                  ],
                ),
                CustomElevatedButton(text: "Check out", nextScreen: CartScreen())
              ],
            )
          ],
        ),
      ),
    );
  }
}
