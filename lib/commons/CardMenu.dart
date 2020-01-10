import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final Icon icon;

  CardMenu({this.icon, this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 100,
        height: 100,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.tv,
                color: Colors.red,
                size: 40.0,
              ),
              SizedBox(height: 5),
              title,
            ]),
      ),
    );
  }

  @override
  Size get preferredSize => null;
}
