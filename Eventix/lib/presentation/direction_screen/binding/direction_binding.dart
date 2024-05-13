import '../controller/direction_controller.dart';
import 'package:get/get.dart';

class DirectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DirectionController());
  }
}
