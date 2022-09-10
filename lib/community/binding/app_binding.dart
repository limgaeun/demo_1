import 'package:frontend/community/controller/user_controller.dart';
import 'package:frontend/community/firebase_service.dart';
import 'package:get/instance_manager.dart';

class AppBinding extends Bindings {

  @override
  void dependencies() async {
    await Get.putAsync(() => FirebaseService().init());
    Get.put(() => UserController());
  }
}