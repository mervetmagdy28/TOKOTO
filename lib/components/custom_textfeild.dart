import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintText, required this.icon, required this.labelText}) : super(key: key);
  final String hintText;
  final IconData icon;
 final String labelText;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: TextField(

          cursorColor: Colors.grey[500],
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  color: Colors.grey
              ),
              border:OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
              suffixIcon: Icon(icon),
              label: Text(labelText)
          )

      ),
    );
  }
}
