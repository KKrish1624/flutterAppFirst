import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int num = 1;
    String name  = "Krish Athreyan";
    const appName = "Sample Application";
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body:Center(
            child: Container(
              child: Text("Hey! This is my ${num}st mobile application!\nMy name is $name!"),
            )
        ),
        drawer: Drawer(),
    )
    );
  }
}
