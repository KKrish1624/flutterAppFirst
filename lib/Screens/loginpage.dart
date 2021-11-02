import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text(
            "You are at the Login Page!",

          //Font Styling
          style: TextStyle(
            fontSize: 20,
            color: Colors.purpleAccent,
              fontWeight: FontWeight.bold
          ),

          //Increase the font size of a text by a factor
          // textScaleFactor: 2.0,
        ),
      ),
    );
  }
}