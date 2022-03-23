import 'package:get/get.dart';
import 'package:getxpro/api/users.api.dart';
import 'package:getxpro/model/users_modell.dart';

class UsersController extends GetxController {
  List<User> _users = [];
  List<User> get users => _users;
  bool _loading = true;

  bool get loading => _loading;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    loadUsers();
  }

  Future<void> loadUsers() async {
    final data = await UsersAPI.instance.getUsers(1);
    _users = data!;
    _loading = false;
    update(['users']);
  }
}
