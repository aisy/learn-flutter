import 'package:flutter/material.dart';

// Main function yang menjalankan class MyApp
void main() => runApp(MyApp());

// class MyApp membuat Widget dengan kondisi tanpa state
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Membuat Widget bubble
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'kandersteg, Switzerland',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ]),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Widget detailSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        "Do consequat cillum do est excepteur reprehenderit adipisicing commodo culpa consequat. Occaecat sit magna cupidatat commodo aute elit aliquip. Occaecat adipisicing elit non dolor excepteur Lorem excepteur commodo sint. Mollit occaecat culpa enim culpa aute. Laboris qui exercitation ad ipsum minim ad anim.",
        softWrap: true,
      ),
    );
    //
    return MaterialApp(
        // membuat halaman dengan isi appBar dan body
        home: Scaffold(
            body: ListView(
      children: [titleSection, detailSection],
    )));
  }
}
