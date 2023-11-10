import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/login.dart';
import 'package:flutter_app/Pages/welcome.dart';
import 'package:splashscreen/splashscreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Color.fromARGB(250, 98, 0, 238),
      seconds: 3,
      navigateAfterSeconds: Welcome(),
      useLoader: false,
      title: Text(
        "Email",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
