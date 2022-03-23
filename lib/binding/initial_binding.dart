import 'package:get/get.dart';
import 'package:getxpro/controller/user_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsersController>(() => UsersController());
  }
}
