import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/edit_profile_screen/models/edit_profile_model.dart';
import 'package:flutter/material.dart';

class EditProfileController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController inputFieldOneController = TextEditingController();

  TextEditingController inputFieldTwoController = TextEditingController();

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

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
  }
}
