import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/checkout_screen/models/checkout_model.dart';

class CheckoutController extends GetxController {
  Rx<CheckoutModel> checkoutModelObj = CheckoutModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
