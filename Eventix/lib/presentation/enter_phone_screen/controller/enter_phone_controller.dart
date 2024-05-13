import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/enter_phone_screen/models/enter_phone_model.dart';
import 'package:flutter/material.dart';

class EnterPhoneController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  Rx<EnterPhoneModel> enterPhoneModelObj = EnterPhoneModel().obs;

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
