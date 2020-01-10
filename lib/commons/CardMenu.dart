import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final String icon;

  CardMenu({
    this.icon = "tv",
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey.shade700,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
          width: 89,
          height: 89,
          child: GestureDetector(
            onTap: () => AlertDialog(
              title: Text("Test"),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.tv,
                    color: Colors.white,
                    size: 40.0,
                  ),
                  SizedBox(height: 5),
                  title,
                ]),
          )),
    );
  }

  @override
  Size get preferredSize => null;
}
