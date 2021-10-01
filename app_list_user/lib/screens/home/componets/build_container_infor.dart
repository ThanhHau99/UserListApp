import 'package:app_list_user/models/user.dart';
import 'package:flutter/material.dart';

class BuildContainerInfor extends StatelessWidget {
  const BuildContainerInfor({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: size.height * 0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.name,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.fade,
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            user.email,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            children: [
              Icon(Icons.phone),
              Text(
                user.phone,
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
