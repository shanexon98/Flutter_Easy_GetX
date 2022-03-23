import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpro/controller/user_controller.dart';
import 'package:getxpro/view/users/widgets/users_widgets.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UsersController>(
        builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text('Usuarios'),
            ),
            body: UsersLists()));
  }
}
