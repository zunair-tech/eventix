import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/choose_location_screen/models/choose_location_model.dart';
import 'package:flutter/material.dart';

class ChooseLocationController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ChooseLocationModel> chooseLocationModelObj = ChooseLocationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
