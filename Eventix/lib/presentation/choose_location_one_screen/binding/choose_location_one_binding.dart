import '../controller/choose_location_one_controller.dart';
import 'package:get/get.dart';

class ChooseLocationOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseLocationOneController());
  }
}
