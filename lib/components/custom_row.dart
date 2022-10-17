import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({Key? key, required this.price, required this.description, required this.image}) : super(key: key);
  final double price;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,),
      child: Row(

        children: [

          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child:  Container(width:150,
                  height: 100,
                  child: Image(image: AssetImage("$image")))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(

                    child: Text("$description\n", style: TextStyle(fontSize: 15),),
                    width: 195,
                ),
                Row(
                  children: [
                    Text("\$$price", style: TextStyle(fontSize: 15 ,color: Colors.orange),),
                    Text("   x1", style: TextStyle(fontSize: 15 ,color: Colors.grey),),

                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
