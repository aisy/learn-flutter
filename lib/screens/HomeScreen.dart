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
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Text("data"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              value.toString(),
              style: TextStyle(fontSize: 80),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: CardMenu(
                title: Text(
                  "TV",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
