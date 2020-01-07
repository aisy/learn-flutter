import 'package:flutter/material.dart';

// Main function yang menjalankan class MyApp
void main() => runApp(MyApp());

// class MyApp membuat Widget dengan kondisi tanpa state
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // implementasi Material
    return MaterialApp(
      // membuat halaman dengan isi appBar dan body
      home: Scaffold(
        appBar: AppBar(title: Text("Hello")),
        body: Center(child: Text("Yolo elolololo")),
      ),
    );
  }
}
