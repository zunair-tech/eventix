import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/ticket_one_screen/models/ticket_one_model.dart';
import 'package:flutter/material.dart';

class TicketOneController extends GetxController {
  TextEditingController darkModeController = TextEditingController();

  Rx<TicketOneModel> ticketOneModelObj = TicketOneModel().obs;
  Rx<bool> darkModeSwitch = false.obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    darkModeController.dispose();
  }
}
