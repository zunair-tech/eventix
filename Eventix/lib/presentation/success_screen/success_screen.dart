import 'package:Eventix/widgets/spacing.dart';

import 'controller/success_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';

class SuccessScreen extends GetWidget<SuccessController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Stack(
              children: [
                Align(
                  alignment: Alignment(0, -.55),
                  child: CustomImageView(
                    margin: getMargin(top: 20),
                    imagePath: ImageConstant.bgImage,
                    width: size.width,
                    height: getVerticalSize(160),
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VerticalSpace(height: 50),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(
                        bottom: 57,
                      ),
                      color: ColorConstant.whiteA700,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder32,
                      ),
                      child: Container(
                        height: getSize(
                          112.00,
                        ),
                        width: getSize(
                          112.00,
                        ),
                        padding: getPadding(
                          all: 24,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder32,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgCheckmark1,
                              height: getSize(
                                64.00,
                              ),
                              width: getSize(
                                64.00,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        width: size.width,
                        height: size.height * .55,
                        padding: getPadding(
                            left: 24, top: 34, right: 24, bottom: 34),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder24),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        "msg_your_password_has".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtOutfitSemiBold24,
                                      ),
                                    ),
                                    Container(
                                      margin: getMargin(
                                        top: 22,
                                      ),
                                      child: Text(
                                        "".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtOutfitLight16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CustomButton(
                                  height: 56,
                                  width: 327,
                                  text: "lbl_next".tr,
                                  onTap: () => Get.offNamedUntil(
                                      AppRoutes.homeContainerScreen,
                                      (route) => false))
                            ]))
                  ],
                )
              ],
            )));
  }
}
