import '../controller/new_payment_method_controller.dart';
import 'package:get/get.dart';

class NewPaymentMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewPaymentMethodController());
  }
}
