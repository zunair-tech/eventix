import 'controller/cancel_ticket_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class CancelTicketBottomsheet extends StatelessWidget {
  CancelTicketBottomsheet(this.controller);

  CancelTicketController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: size.width,
            padding: getPadding(left: 24, top: 40, right: 24, bottom: 40),
            decoration: AppDecoration.fillWhiteA700
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: getHorizontalSize(299.00),
                      child: Text("msg_do_you_want_to_cancel".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtOutfitSemiBold24)),
                  Container(
                      width: getHorizontalSize(256.00),
                      margin: getMargin(top: 27),
                      child: Text("This action cannot be undone.".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtOutfitLight16)),
                  Padding(
                      padding: getPadding(top: 56),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                                height: 56,
                                width: 155,
                                text: "lbl_cancel_ticket".tr,
                                variant: ButtonVariant.FillDeeporange500),
                            CustomButton(
                                height: 56,
                                width: 155,
                                text: "lbl_close".tr,
                                onTap: onTapClose)
                          ]))
                ])));
  }

  onTapClose() {
    Get.back();
  }
}
