import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/logout_bottomsheet/models/logout_model.dart';

class LogoutController extends GetxController {
  Rx<LogoutModel> logoutModelObj = LogoutModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
