import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({Key? key, required this.text, required this.nextScreen}) : super(key: key);
 final String text;
 final Widget nextScreen;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.only(top :20, left: 110 , right: 110 , bottom: 20)),
            backgroundColor: MaterialStateProperty.all(Color(0xFFF18140)) ,
            shape: MaterialStateProperty.all(

                RoundedRectangleBorder(
                    borderRadius:BorderRadius.all(Radius.circular(30))
                )
            ) ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return nextScreen;
          }, ));
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        )
    );
  }
}
