import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/payment_method_one_screen/models/payment_method_one_model.dart';

class PaymentMethodOneController extends GetxController {
  Rx<PaymentMethodOneModel> paymentMethodOneModelObj =
      PaymentMethodOneModel().obs;

  Rx<int> selectedPaymentMethod = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
