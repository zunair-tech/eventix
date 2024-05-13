import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/order_complete_screen/models/order_complete_model.dart';

class OrderCompleteController extends GetxController {
  Rx<OrderCompleteModel> orderCompleteModelObj = OrderCompleteModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
