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
              //Creates an empty box, which will give space
              const SizedBox(
                height: 20.0,
              ),

              const Text("Welcome! Please login!",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32.0),
                   child: Column(
                     children: [
                       TextFormField(
                         decoration: const InputDecoration(
                           hintText: "Enter Email",
                           labelText: "Email",
                         ),
                       ),


                       TextFormField(
                         obscureText: true,
                         decoration: const InputDecoration(
                           hintText: "Enter Password",
                           labelText: "Password",
                         ),
                       ),
                       const SizedBox(
                         height: 20.0,
                       ),

                       ElevatedButton(
                           onPressed: () {
                             print("Logged in!");
                           },
                           //style: TextButton.styleFrom(),
                           child: const Text("Login")
                       )
                     ],

                   ),
                 )
               ], 
              )
            ],
          ),

      );
  }
}