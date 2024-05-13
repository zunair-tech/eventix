import '../controller/enter_phone_controller.dart';
import 'package:get/get.dart';

class EnterPhoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EnterPhoneController());
  }
}
