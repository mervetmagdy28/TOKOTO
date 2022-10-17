import 'package:flutter/material.dart';

class TypePopular  extends StatelessWidget {
  const TypePopular ({Key? key, required this.imageName}) : super(key: key);
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
          width: 120,
          height: 110,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(imageName),
              ),

            ],
          )

      ),
    );
  }
}
