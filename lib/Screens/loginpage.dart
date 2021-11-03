import 'package:flutter/material.dart';
import 'package:flutter_application_2/Utils/routes.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;
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
      //Puts the element into a scrollable container, which will automatically adjust according to the screen.
          child: SingleChildScrollView(

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

               Text("Welcome $name!",
              style: const TextStyle(
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

                       //Email Text Field
                       TextFormField(
                         decoration: const InputDecoration(
                           hintText: "Enter Email",
                           labelText: "Email",
                         ),
                         onChanged: (value){
                           name = value;
                           setState(() {});
                         },
                       ),

                      //Password Text Field
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

                       //Button for logging in.
                       // ElevatedButton(
                       //     onPressed: () {
                       //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                       //     },
                       //     //style: TextButton.styleFrom(),
                       //     style: TextButton.styleFrom(
                       //       minimumSize: const Size(130, 45),
                       //     ),
                       //     child: const Text("Login")
                       // )

                       //Widget to give a container clickable property
                       //Alternative for InkWell is GesterDetector
                       //The later does not give the clicking property or feedback
                       //Only Tap is available.
                       InkWell(

                         //This will give a call back after clicking where we
                         //pass the navigation logic
                         onTap:  () async {
                           setState(() {
                             changeButton = true;
                           });
                           await Future.delayed(const Duration(seconds: 1));
                           Navigator.pushNamed(context, MyRoutes.homeRoute);
                         },
                         child: AnimatedContainer(

                           //This duration is the time taken before the animation
                           //is performed.
                           duration: const Duration(seconds: 1),
                           width: changeButton? 40: 130,
                           height: 45,
                           alignment: Alignment.center,
                           child: changeButton? const Icon(
                               Icons.done, color: Colors.white,
                           ) : const Text("Login",
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 16,
                             fontWeight: FontWeight.bold
                           ),
                           ),
                           decoration: BoxDecoration(
                             color: Colors.deepPurple,
                             borderRadius: BorderRadius.circular(changeButton?20:8),
                           ),
                         ),
                       )
                     ],
                   ),
                 )
               ],
              )
            ],
          ),
          )
      );
  }
}