import 'package:flutter/material.dart';

class MoreButtom extends StatelessWidget {
  final GestureTapCallback onTap;
  const MoreButtom({
    Key key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: size.width * 0.09,
        width: size.width * 0.09,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Theme.of(context).backgroundColor,
        ),
        child: Icon(
          Icons.more_horiz,
          color: Colors.white,
        ),
      ),
    );
  }
}
