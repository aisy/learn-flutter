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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Yeaaaaah ALiii"),
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
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text("tambah bilangan"),
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                onPressed: tambahBil,
              ),
              SizedBox(height: 10),
              RaisedButton(
                child: Text("reset"),
                color: Colors.red,
                textColor: Colors.white,
                padding: EdgeInsets.all(15),
                onPressed: resetBil,
              )
            ],
          ),
        ),
      ),
    );
  }
}
