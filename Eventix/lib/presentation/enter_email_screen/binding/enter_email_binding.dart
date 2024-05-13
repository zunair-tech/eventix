import '../controller/enter_email_controller.dart';
import 'package:get/get.dart';

class EnterEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EnterEmailController());
  }
}
