import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/contact_organizer_screen/models/contact_organizer_model.dart';
import 'package:flutter/material.dart';

import '../models/chat_model.dart';

class ContactOrganizerController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  Rx<ContactOrganizerModel> contactOrganizerModelObj =
      ContactOrganizerModel().obs;

  RxList<ChatModel> chatList = RxList([
    ChatModel(msg: "السلام عليكم", isMine: true),
    ChatModel(
        msg: "وعليكم السلام، يامرحبا سعود كيف نقدر نخدمك ؟", isMine: false),
    ChatModel(
        msg: "حبيت استفسر هل ممكن اصطحاب الاطفال في ايفنت مدل بيست ؟",
        isMine: true),
    ChatModel(
        msg:
            "المعذره منك استاذي لكن يمنع اصطحاب الاطفال، الفئة العمريه هي فوق ال١٧ سنة هل يوجد استفسار اخر ؟",
        isMine: false),
    ChatModel(msg: "تمام، شكرا", isMine: true),
  ]);

  final ScrollController _controller = ScrollController();

  void scrollDown() {
    _controller.jumpTo(_controller.position.maxScrollExtent);
  }

  onFieldSubmitted(String val) {
    chatList.add(ChatModel(msg: val, isMine: true));
    update();
    inputFieldController.clear();
    update();
    scrollDown();
  }

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
