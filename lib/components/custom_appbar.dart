import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.appBarText}) : super(key: key);
  final String appBarText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Icon(Icons.arrow_back_ios,color: Colors.grey[500],),
        ),

        Center(
          child: Text(appBarText, style: TextStyle(
              color: Colors.grey[500],
              fontSize: 16
          ),),
        )
      ],
    );
  }
}
