import 'package:flutter/material.dart';

class BuildAvatar extends StatelessWidget {
  const BuildAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.23,
      height: size.width * 0.23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: Theme.of(context).backgroundColor,
          width: 3,
        ),
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/avatar.jpg'),
      ),
    );
  }
}
