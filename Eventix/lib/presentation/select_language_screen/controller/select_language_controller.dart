
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/select_language_model.dart';

class SelectLanguageController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SelectLanguageModel> selectLanguageModelObj = SelectLanguageModel().obs;
  Locale? locale=Locale('en');

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  void changeLang (String langCode){
   locale=Locale(langCode); 
    Get.updateLocale(locale!);
  }
}
