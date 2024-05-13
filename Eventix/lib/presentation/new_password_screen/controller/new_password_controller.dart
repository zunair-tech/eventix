import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/new_password_screen/models/new_password_model.dart';
import 'package:flutter/material.dart';

class NewPasswordController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController inputFieldOneController = TextEditingController();

  Rx<NewPasswordModel> newPasswordModelObj = NewPasswordModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController.dispose();
    inputFieldOneController.dispose();
  }
}
