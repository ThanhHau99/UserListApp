import 'package:app_list_user/models/user.dart';
import 'package:app_list_user/screens/detail/componnets/build_row.dart';
import 'package:app_list_user/screens/home/componets/build_avatar.dart';
import 'package:flutter/material.dart';

class DetailUser extends StatelessWidget {
  const DetailUser({
    Key key,
    @required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      builder: (context, controller) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 15,
                ),
                child: BuildAvatar(),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 30,
                          ),
                          child: Text(
                            "User profile",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        BuildRow(
                          title: "Name",
                          sub: user.name,
                        ),
                        BuildRow(
                          title: "Email",
                          sub: user.email,
                        ),
                        BuildRow(
                          title: "Phone",
                          sub: user.phone,
                        ),
                        BuildRow(
                          title: "Website",
                          sub: user.website,
                        ),
                        BuildRow(
                          title: "Address",
                          sub: user.address.street + ", " + user.address.city,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20,
                          ),
                          child: Text(
                            "Company",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                        BuildRow(
                          title: "Name",
                          sub: user.company.name,
                        ),
                        BuildRow(
                          title: "Catchphrase",
                          sub: user.company.catchPhase,
                        ),
                        BuildRow(
                          title: "Bs",
                          sub: user.company.bs,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
