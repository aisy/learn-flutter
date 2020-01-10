import 'package:eleven_guitar/commons/AppBarMain.dart';
import 'package:eleven_guitar/commons/CardMenu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int value = 0;

  void tambahBil() {
    setState(() {
      value = value + 1;
    });
  }

  void resetBil() {
    setState(() {
      value = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBarMain(
        appBar: AppBar(),
        title: Text("Eleven Guitar"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                CardMenu(
                  icon: "alarm",
                  title: Text(
                    "TV",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                CardMenu(
                  title: Text(
                    "TV",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                CardMenu(
                  title: Text(
                    "TV",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                CardMenu(
                  title: Text(
                    "TV",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
