import 'package:app_list_user/models/user.dart';
import 'package:app_list_user/network/network.dart';
import 'package:app_list_user/screens/detail/detail_user.dart';
import 'package:app_list_user/screens/home/componets/build_avatar.dart';
import 'package:app_list_user/screens/home/componets/build_container_infor.dart';
import 'package:app_list_user/screens/home/componets/more_buttom.dart';
import 'package:app_list_user/share/change_theme_builder.dart';
import 'package:flutter/material.dart';

import 'componets/app_bar.dart';

class HomePage extends StatelessWidget {
  final Network network = Network();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: "List Users",
      ),
      body: FutureBuilder(
        future: network.loadData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          List<User> dataUser = snapshot.data;
          return ListView.builder(
            itemCount: dataUser.length,
            itemBuilder: (context, index) {
              return UserCard(user: dataUser[index]);
            },
          );
        },
      ),
      floatingActionButton: ChangeThemeButtonWidget(),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    Key key,
    this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: size.height * 0.15,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 0),
            blurRadius: 3,
          ),
        ],
      ),
      child: Row(
        children: [
          BuildAvatar(),
          SizedBox(
            width: size.width * 0.03,
          ),
          BuildContainerInfor(user: user),
          MoreButtom(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (BuildContext context) {
                  return DetailUser(
                    user: user,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
