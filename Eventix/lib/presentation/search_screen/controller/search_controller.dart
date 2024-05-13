import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/search_screen/models/search_model.dart';
import 'package:flutter/material.dart';

class MySearchController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SearchModel> searchModelObj = SearchModel().obs;
  Rx<bool> isSearching = false.obs;
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
