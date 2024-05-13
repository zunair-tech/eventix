import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/login_sign_up_screen/models/login_sign_up_model.dart';

class LoginSignUpController extends GetxController {
  Rx<LoginSignUpModel> loginSignUpModelObj = LoginSignUpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
