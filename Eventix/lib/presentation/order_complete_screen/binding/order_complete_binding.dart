import '../controller/order_complete_controller.dart';
import 'package:get/get.dart';

class OrderCompleteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderCompleteController());
  }
}
