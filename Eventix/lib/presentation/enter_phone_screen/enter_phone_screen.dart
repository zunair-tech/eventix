import 'package:Eventix/widgets/bk_btn.dart';

import 'controller/enter_phone_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/core/utils/validation_functions.dart';
import 'package:Eventix/widgets/custom_button.dart';
import 'package:Eventix/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EnterPhoneScreen extends GetWidget<EnterPhoneController> {
  //GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    Padding(
                        padding: getPadding(left: 4, top: 30),
                        child: Row(
                          children: [
                            BkBtn(),
                            Text("lbl_enter_phone".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtOutfitMedium18Gray900),
                          ],
                        )),
                    Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: getMargin(bottom: 57),
                        color: ColorConstant.whiteA700,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder32),
                        child: Container(
                            height: getSize(112.00),
                            width: getSize(112.00),
                            padding: getPadding(all: 24),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder32),
                            child: Stack(children: [
                              CustomImageView(
                                  svgPath: ImageConstant.imgMobile,
                                  height: getSize(64.00),
                                  width: getSize(64.00),
                                  alignment: Alignment.center)
                            ]))),
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
                                        width: getHorizontalSize(313.00),
                                        child: Text(
                                            "msg_enter_your_registered2".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtOutfitLight16)),
                                    CustomTextFormField(
                                        width: 327,
                                        focusNode: FocusNode(),
                                        controller:
                                            controller.inputFieldController,
                                        hintText: "+966555555555".tr,
                                        margin: getMargin(top: 38),
                                        padding:
                                            TextFormFieldPadding.PaddingT11,
                                        textInputAction: TextInputAction.done,
                                        prefix: Container(
                                            margin: getMargin(
                                                left: 24,
                                                top: 12,
                                                right: 10,
                                                bottom: 12),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgComputer1)),
                                        prefixConstraints: BoxConstraints(
                                            minWidth: getSize(24.00),
                                            minHeight: getSize(24.00)),
                                        validator: (value) {
                                          if (!isValidPhone(value)) {
                                            return "Please enter valid phone number";
                                          }
                                          return null;
                                        }),
                                  ],
                                ),
                              ),
                              CustomButton(
                                height: 56,
                                width: 327,
                                text: "lbl_next".tr,
                                onTap: () =>
                                    Get.toNamed(AppRoutes.verificationScreen),
                              )
                            ]))
                  ],
                )
              ],
            )));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
