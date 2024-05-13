import '../controller/choose_method_controller.dart';
import 'package:get/get.dart';

class ChooseMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseMethodController());
  }
}
