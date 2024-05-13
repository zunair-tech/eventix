import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/enter_email_screen/models/enter_email_model.dart';
import 'package:flutter/material.dart';

class EnterEmailController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<EnterEmailModel> enterEmailModelObj = EnterEmailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
