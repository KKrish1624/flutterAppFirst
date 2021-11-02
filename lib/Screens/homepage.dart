import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int num = 1;
    String name  = "Krish Athreyan";
    const appName = "Sample Application";
    return Scaffold(  //New interface
        appBar: AppBar( //Header
          title: const Text(appName),
        ),
        body:Center( //Body
            child: Text("Hey! This is my ${num}st mobile application!\nMy name is $name!")
        ),
        drawer: const Drawer(), //Drawer
    );
  }
}
