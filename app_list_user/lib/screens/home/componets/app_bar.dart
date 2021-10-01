import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context,
    {String title, List<Widget> actions, Widget leading}) {
  return AppBar(
    backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
    elevation: 0,
    title: Text(
      title,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    ),
    centerTitle: true,
  );
}
