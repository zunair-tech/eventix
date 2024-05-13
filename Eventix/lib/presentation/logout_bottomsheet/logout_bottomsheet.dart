import 'controller/logout_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class LogoutBottomsheet extends StatelessWidget {
  LogoutBottomsheet(this.controller);

  LogoutController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: size.width,
            padding: getPadding(left: 24, top: 32, right: 24, bottom: 32),
            decoration: AppDecoration.fillWhiteA700
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      width: getHorizontalSize(272.00),
                      child: Text("msg_are_you_sure_you".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtOutfitSemiBold24)),
                  Padding(
                      padding: getPadding(top: 45, bottom: 7),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                              height: 56,
                              width: 155,
                              text: "lbl_yes_logout".tr,
                              variant: ButtonVariant.FillDeeporange500,
                              onTap: () => Get.offNamedUntil(
                                  AppRoutes.loginScreen, (route) => false),
                            ),
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
