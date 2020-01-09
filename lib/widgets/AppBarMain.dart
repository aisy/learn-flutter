import 'package:flutter/./material.dart';

// untuk bisa di gunakan reusable component hrus implements PreferredSizeWidget
class AppBarMain extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.blue;
  final Text title;
  final AppBar appBar;

  // constructor
  AppBarMain({
    Key key,
    this.title,
    this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
