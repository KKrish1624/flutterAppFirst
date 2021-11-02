import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

      //Every widget can carry one or more properties within them
      //If it has one property, we use "child".
      //If there are more than one property
      //child: Center(
        // child: Text(
        //     "You are at the Login Page!",
        //
        //   //Font Styling
        //   style: TextStyle(
        //     fontSize: 20,
        //     color: Colors.purpleAccent,
        //       fontWeight: FontWeight.bold
        //   ),
        //
        //   //Increase the font size of a text by a factor
        //   // textScaleFactor: 2.0,
        // ),
      //Column - Add elements vertically
          child: Column(
            //Children - Has more than one property within
            children: [

              //Image.asset - Accesses images from the specified asset
              Image.asset("./assets/images/login.png",

              //Fitting of the Image
              fit: BoxFit.cover ),

              const SizedBox(
                height: 20.0,
              ),

              const Text("Welcome! Please login!",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              )
            ],
          ),
      );
  }
}