import 'package:flutter/material.dart';

// Main function yang menjalankan class MyApp
void main() => runApp(MyApp());

// class MyApp membuat Widget dengan kondisi tanpa state
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // implementasi Material
    var scaffold = Scaffold(
      // appBar: AppBar(title: Text("Hello")),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: 250,
          decoration: new BoxDecoration(
              color: Colors.blue,
              borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                  bottomRight: const Radius.circular(40.0),
                  bottomLeft: const Radius.circular(40.0))),
          child: Text(
            "Reprehenderit enim mollit est esse do esse magna incididunt eu eiusmod aute reprehenderit nisi. In enim duis quis amet id sint mollit. Cupidatat quis proident fugiat sunt sit ea esse pariatur pariatur ut cupidatat fugiat commodo. Nostrud velit sit Lorem sit non. Duis nulla exercitation id irure laborum enim nostrud adipisicing.",
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
    );
    return MaterialApp(
      // membuat halaman dengan isi appBar dan body
      home: scaffold,
    );
  }
}
