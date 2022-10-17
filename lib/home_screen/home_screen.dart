import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:tokoto/components/custom_container.dart';
import 'package:tokoto/components/type_category.dart';
import 'package:tokoto/components/type_popular.dart';

import '../cart_page/cart_page.dart';
import '../details_page/details_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 240,
                      child: TextField(

                          cursorColor: Colors.grey[500],
                          decoration: InputDecoration(
                              hintText: "Search product",
                              hintStyle: TextStyle(
                                  color: Colors.grey
                              ),
                              border:OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                              prefixIcon: Icon(Icons.search),
                              label: Text("Search")
                          )

                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CartScreen()));
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        child:Icon(Icons.shopping_cart),
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.grey[300]
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          child:Icon(Icons.notifications_on),
                          decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.grey[300]
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            width: 15,
                            height: 15,
                            child: Center(
                              child: Text("3",style: TextStyle(
                                fontSize: 8,color: Colors.white
                              ),),
                            ),
                            decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red
                            ),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 370,
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text("A Summer Surprise",style: TextStyle(color: Colors.grey[400],fontSize: 12),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text("Cashback 20%", style: TextStyle(color: Colors.white, fontSize: 25),),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF4C3D8E)
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35,horizontal: 20),

                child: Container(
                  height: 70,
                  child: ListView(

                    scrollDirection: Axis.horizontal,
                    children: [
                       CustomContainer(icon: Icons.flash_auto),
                       CustomContainer(icon: Icons.note),
                       CustomContainer(icon: Icons.gamepad),
                       CustomContainer(icon: Icons.card_giftcard),
                       CustomContainer(icon: Icons.more),

                    ],
                  ),
                ),
              ),
              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 60 , left: 20),
                    child: Text("Special for you", style: TextStyle(
                      fontSize: 20
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( left: 50),
                    child: Text("See More", style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                    ),),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width:380,
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                     TypeCategory(brandsNumber: 18, imageName: "assets/energy-background.png", categoryName: 'Smartphone',),
                     TypeCategory(brandsNumber: 24, imageName: "assets/1000_F_325455502_k56ovgc4Q1nBjCkTxqCHBspaNFoXQQP0.jpg", categoryName: 'Fashion',),
                    ],
                  ),
                ),
              ),
              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 40 , left: 20),
                    child: Text("Popular Product", style: TextStyle(
                        fontSize: 20
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only( left: 50),
                    child: Text("See More", style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                    ),),
                  ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  width:380,
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                       GestureDetector(
                         onTap: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsPage()));
                         },
                           child: Container(
                               child: TypePopular(imageName: "assets/pexels-photo.jpg")
                           ),
                       ),
                       TypePopular(imageName: "assets/c06986470_390x286.jpg"),
                       TypePopular(imageName: "assets/158838-headphones-review-apple-airpods-3rd-generation-review-product-shots-image25-cgpbkmwpfd.jpg"),
                       TypePopular(imageName: "assets/Picture3.png"),
                      ],
                  ),
                ),
              ),

            ],
          )
        ],
      ),
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Colors.white,
        onButtonPressed: (index) {},
        iconSize: 30,
        activeColor: Color(0xFF01579B),
        selectedIndex: 0,
        barItems: [
          BarItem(
            icon: Icons.event,
            title: 'Events',
          ),
          BarItem(
            icon: Icons.search_rounded,
            title: 'Search',
          ),
          /// Add more BarItem if you want
        ],
      ),
    );
  }
}
