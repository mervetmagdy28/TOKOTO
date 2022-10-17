import 'package:flutter/material.dart';

import '../components/customelevatedbutton.dart';
import '../home_screen/home_screen.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[
          Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Container(
                child: Image.asset("assets/61IG46p-yHL._SL1500_.jpg"),
              ),
            ),
            Row(
             children: [

               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                 child: GestureDetector(
                   onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
                   },
                   child: Container(
                     width: 40,
                     height: 40,
                     child: Padding(
                       padding: const EdgeInsets.only(left: 8),
                       child: Icon(Icons.arrow_back_ios,color: Colors.grey[500],),
                     ),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(22),
                       color: Colors.white,

                     ),
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 220),
                 child: Container(
                   width: 70,
                   height: 30,
                   child: Center(child: Text("4.5⭐", style: TextStyle(fontSize: 16),)),
                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(15)
                   ),
                 ),
               ),
             ],
           ),
            Padding(
              padding: const EdgeInsets.only(top: 280, left: 40),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        border:Border.all(color: Colors.orange, width: 2),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: ClipRRect(
                          child: Image.asset("assets/pexels-photo.jpg"),
                          borderRadius: BorderRadius.circular(25),
                      ),


                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Container(
                      width: 70,
                      height: 70,
                      child: ClipRRect(
                        child: Image.asset("assets/pexels-photo.jpg"),
                        borderRadius: BorderRadius.circular(25),
                      ),


                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Container(
                      width: 70,
                      height: 70,
                      child: ClipRRect(
                        child: Image.asset("assets/pexels-photo.jpg"),
                        borderRadius: BorderRadius.circular(25),
                      ),


                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: Container(
                      width: 70,
                      height: 70,
                      child: ClipRRect(
                        child: Image.asset("assets/pexels-photo.jpg"),
                        borderRadius: BorderRadius.circular(25),
                      ),


                    ),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 360),
              child: Container(
                width: 600,
                height: 800,
                decoration: BoxDecoration(
                    color: Color(0xFFFDF8F5),
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                     padding: const EdgeInsets.only(top: 30, left: 20),
                     child: Text("Wireless Controller for PS4", style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,

                     ),),
                   ),
                    Padding(
                      padding: const EdgeInsets.only(left: 330),
                      child: Container(
                        width: 80,
                        height: 50,
                        child: Icon(Icons.heart_broken_sharp,color: Color(0xFFFF464A),),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                          color: Color(0xFFF4DDDE),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                        child: Text(
                          "The DualShock 4 Wireless Controller features familiar controls, and incorporates several innovative features to usher in a new era of interactive experiences. ",
                          style: TextStyle(
                            color: Colors.grey[700]
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              "See More Details  ", style: TextStyle(
                                  color: Color(0xFFF79C93),
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios, color:Color(0xFFF79C93) ,)
                          ],
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            width: 440,
                            height: 150,
                            child:
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 7),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(19),
                                        color: Colors.pink,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 7),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(19),
                                        color: Colors.lightGreen,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 7),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(19),
                                        color: Colors.deepPurple,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 7),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(19),
                                        border: Border.all(width: 2, color: Colors.orange),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      child: Icon(Icons.add),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom: 13),
                                        child: Icon(Icons.minimize_sharp),
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)) ,
                                color: Colors.grey[300]
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 130),
                          child: Container(
                            width: 450,
                            height: 100 ,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                              child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: CustomElevatedButton(text: 'Add To Chart', nextScreen: DetailsPage(),),
                                  ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                                borderRadius: BorderRadius.circular(25)
                            ),
                          ),
                        ),


                      ],
                    )

                  ],
                ),
              ),
            )

          ],
        ),
        ],
      ),
       );
  }
}
