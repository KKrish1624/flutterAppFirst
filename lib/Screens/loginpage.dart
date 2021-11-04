import 'package:flutter/material.dart';
import 'package:flutter_application_2/Utils/routes.dart';

//Stateful Widget is used to change the stage of the current page on any action
//Has two methods, the one that extends from the State class is the one that
//gives us access to the state of the screen/page
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

  //Creates a Global key which can be accessed throughout the program
  final _formKey = GlobalKey<FormState>();

  //This method has the logic of the page navigation
  moveToHome(BuildContext context) async {

    //From the form key generated, the current state validation is checked
    //If the validation holds, further steps are carried out.
    if(_formKey.currentState!.validate()) {
      //This will give a call back after clicking where we
      //pass the navigation logic
      setState(() {
        changeButton = true;
      });

      //Waits for the above call back to finish and after the
      //specified time, performs the next operation
      await Future.delayed(const Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);

      //This will set the changeButton variable to false once it is
      //navigated to the next screen. When the build function is called
      //again, the button is reverted back.
      setState(() {
        changeButton = false;
      });
    }
  }

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

                 //Provides symmetric padding i.e vertical padding are same and horizontal padding are same.
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32.0),
                   child: Form(
                     key: _formKey,
                     child: Column(
                       children: [

                         //Email Text Field
                         TextFormField(
                           decoration: const InputDecoration(
                             hintText: "Enter Email",
                             labelText: "Email",
                           ),

                            //This is a Validator function which validates the value that is
                           //input. If the validation holds, will return null else, will
                           //return a message.
                            validator: (value){
                             if(value!.isEmpty){
                              return "Username can't be empty!";
                             }else{
                              return null;
                             }
                            },
                           //Monitors any change in the text field, performs the callback in case of a change
                           onChanged: (value){
                             name = value;

                             //Refreshes the state of the page/screen and performs the action specifies in.
                             //It basically calls the build function again.
                             setState(() {});
                           },
                         ),

                        //Password Text Field
                         TextFormField(

                           //Is used to hide the entered text in the field.
                           obscureText: true,
                           decoration: const InputDecoration(
                             hintText: "Enter Password",
                             labelText: "Password",
                           ),
                           validator: (value){
                             if(value!.isEmpty){
                               return "Password can't be empty!";
                             }else{
                               return null;
                             }
                           },
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
                         //To get the repel effect while clicking, we must make sure
                         //the parent widget of InkWell must a Material Widget and
                         //the decoration must be given to the Material Widget.
                         Material(
                             color: Colors.deepPurple,
                             //Controls the border radius of the container.
                             borderRadius: BorderRadius.circular(changeButton?20:8),
                           child: InkWell(
                             //splashColor: Colors.green,
                               onTap:  () => moveToHome(context),

                               //Making a button with simple animation from a container

                             //Performs specified action in an animated way
                             child: AnimatedContainer(

                               //This duration is the time taken before the animation
                               //is performed.
                               duration: const Duration(seconds: 1),
                               width: changeButton? 40: 130,
                               height: 45,
                               alignment: Alignment.center,

                               //Icons pack of Flutter
                               //Icon.done gives a tick
                               child: changeButton? const Icon(
                                   Icons.done, color: Colors.white,
                               ) : const Text("Login",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 16,
                                 fontWeight: FontWeight.bold
                               ),
                               ),
                               // decoration: BoxDecoration(
                               // ),
                             ),
                           ),
                         )
                       ],
                     ),
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