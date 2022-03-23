import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpro/controller/user_controller.dart';
import 'package:getxpro/model/users_modell.dart';

class UsersLists extends StatelessWidget {
  const UsersLists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UsersController>(
        id: 'users',
        builder: (_) => _.loading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemBuilder: (context, index) {
                  final User user = _.users[index];
                  return ListTile(
                    title: Text(user.firstName),
                    subtitle: Text(user.email),
                  );
                },
                itemCount: _.users.length,
              ));
  }
}
