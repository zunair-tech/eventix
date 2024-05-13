import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/choose_method_screen/models/choose_method_model.dart';

class ChooseMethodController extends GetxController {
  Rx<ChooseMethodModel> chooseMethodModelObj = ChooseMethodModel().obs;
  Rx<bool> smsSelected = true.obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
