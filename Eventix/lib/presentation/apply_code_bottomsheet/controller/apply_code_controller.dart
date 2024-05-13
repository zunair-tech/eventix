import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/apply_code_bottomsheet/models/apply_code_model.dart';
import 'package:flutter/material.dart';

class ApplyCodeController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  Rx<ApplyCodeModel> applyCodeModelObj = ApplyCodeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController.dispose();
  }
}
