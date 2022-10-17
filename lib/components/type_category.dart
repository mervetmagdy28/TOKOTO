import 'package:flutter/material.dart';

class TypeCategory extends StatelessWidget {
  const TypeCategory({Key? key, required this.brandsNumber, required this.imageName, required this.categoryName}) : super(key: key);
  final int brandsNumber;
  final String imageName;
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
          width: 180,
          height: 110,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(imageName),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("$categoryName",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 8),
                child: Text("$brandsNumber Brands",style: TextStyle(
                    color: Colors.white,
                    fontSize: 13
                ),),
              ),

            ],
          )

      ),
    );
  }
}
