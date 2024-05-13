import '../controller/login_sign_up_controller.dart';
import 'package:get/get.dart';

class LoginSignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginSignUpController());
  }
}
