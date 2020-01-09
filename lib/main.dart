import 'package:eleven_guitar/widgets/CardMenu.dart';
import 'package:eleven_guitar/widgets/appBarMain.dart';
import 'package:flutter/material.dart';

// Main function yang menjalankan class MyApp
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
    Widget buttonIncrease = RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Text("tambah bilangan"),
      color: Colors.blue,
      textColor: Colors.white,
      padding: EdgeInsets.all(15),
      onPressed: tambahBil,
    );

    Widget buttonNull = RaisedButton(
      child: Text("reset"),
      color: Colors.red,
      textColor: Colors.white,
      padding: EdgeInsets.all(15),
      onPressed: resetBil,
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBarMain(
          title: Text('ini appBar'),
          appBar: AppBar(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                value.toString(),
                style: TextStyle(fontSize: 80),
              ),
              SizedBox(height: 10),
              buttonIncrease,
              SizedBox(height: 10),
              buttonNull,
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
      ),
    );
  }
}
