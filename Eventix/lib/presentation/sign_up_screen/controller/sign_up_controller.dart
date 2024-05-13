import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController inputFieldOneController = TextEditingController();

  TextEditingController inputFieldTwoController = TextEditingController();

  TextEditingController inputFieldThreeController = TextEditingController();

  TextEditingController inputFieldFourController = TextEditingController();

  Rx<bool> checkboxVal = false.obs;

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController.dispose();
    inputFieldOneController.dispose();
    inputFieldTwoController.dispose();
    inputFieldThreeController.dispose();
    inputFieldFourController.dispose();
  }
}
