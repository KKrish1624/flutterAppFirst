import 'package:flutter/material.dart';
import 'package:flutter_application_2/homepage.dart';

void main(){
  runApp(myApp());

}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return homepage();

  }
}

