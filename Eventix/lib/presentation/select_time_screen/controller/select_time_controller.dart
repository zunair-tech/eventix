import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/select_time_screen/models/select_time_model.dart';

class SelectTimeController extends GetxController {
  Rx<SelectTimeModel> selectTimeModelObj = SelectTimeModel().obs;

  Rx<int> selectedTime = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
