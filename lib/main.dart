import 'package:flutter/material.dart';
import 'package:flutter_application_2/Screens/homepage.dart';
import 'Screens/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //build is a method which is defined in the class of StateLessWidget.
  //We are inheriting from this class and using the build method by
  //overriding the pre-defined outline with our own code.

  //Parameters passed during the build function call, BuildContext context
  //tells the position of a page in the main structure of the application
  //tree.

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      //This is by default the home or "/" route
      //Either it can be specified here or in the route but not at both
      //the places.

      // home:  const HomePage(),
      //Primary Theme mode: Light or Dark
      themeMode: ThemeMode.light,

      //Modifying the light theme further
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      //To enable dark theme in the app.
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),

        initialRoute: "/login",

      routes: {
        //Home Route - Default
        "/": (context) => const HomePage(),
        "/login": (context) => const LoginPage(),
    }

    );


  }
}