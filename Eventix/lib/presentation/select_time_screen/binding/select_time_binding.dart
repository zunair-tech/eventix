import '../controller/select_time_controller.dart';
import 'package:get/get.dart';

class SelectTimeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectTimeController());
  }
}
