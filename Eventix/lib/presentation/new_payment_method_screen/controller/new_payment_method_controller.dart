import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/new_payment_method_screen/models/new_payment_method_model.dart';
import 'package:flutter/material.dart';

class NewPaymentMethodController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController inputFieldOneController = TextEditingController();

  TextEditingController priceController = TextEditingController();

  TextEditingController inputFieldTwoController = TextEditingController();

  Rx<NewPaymentMethodModel> newPaymentMethodModelObj =
      NewPaymentMethodModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController.dispose();
    inputFieldOneController.dispose();
    priceController.dispose();
    inputFieldTwoController.dispose();
  }
}
