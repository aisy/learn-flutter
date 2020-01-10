import 'dart:async';

import 'package:eleven_guitar/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 10);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return HomeScreen();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "images/Facebook_Lab_Innovation_Indonesia.png",
              height: 80,
            ),
            // Text(
            //   "data",
            //   style: TextStyle(
            //     fontSize: 40,
            //     color: Colors.white,
            //   ),
            // ),
            SizedBox(height: 10),
            SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                backgroundColor: Colors.blueGrey[300],
                valueColor: new AlwaysStoppedAnimation(Colors.blueGrey[50]),
                strokeWidth: 3.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
