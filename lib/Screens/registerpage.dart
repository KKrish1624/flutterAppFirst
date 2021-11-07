import 'package:flutter/material.dart';
import 'package:flutter_application_2/Utils/routes.dart';

class RegisPage extends StatelessWidget {
  const RegisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              Image.asset("./assets/images/registerpic.png",
                  fit: BoxFit.cover),

              const SizedBox(
                height: 20.0,
              ),

              const Text(
                  "Welcome!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter First Name",
                  labelText: "First Name"
                ),
              ),
                const SizedBox(
                  height: 10.0,
                ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: "Enter Last name",
                labelText: "Last Name"
            ),
          ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter Email Address",
                    labelText: "Email Address"
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password"
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Re-enter Password",
                    labelText: "Confirm Password"
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(onPressed: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              },
              // style: TextButton.styleFrom(
              //   minimumSize: Size(width, height)
              // ),
                child: const Text("Register"),
              ),

              const SizedBox(
                height: 10.0,
              ),

              GestureDetector(
                  child: const Text("Click here if you have already registered!",
                      style: TextStyle(decoration: TextDecoration.underline, color: Colors.deepPurple)),
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.loginRoute);
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}