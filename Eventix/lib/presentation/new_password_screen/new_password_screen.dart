import 'package:Eventix/widgets/bk_btn.dart';
import 'package:Eventix/widgets/spacing.dart';

import 'controller/new_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/core/utils/validation_functions.dart';
import 'package:Eventix/widgets/custom_button.dart';
import 'package:Eventix/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NewPasswordScreen extends GetWidget<NewPasswordController> {
  //GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Stack(alignment: Alignment.topLeft, children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Padding(
                          padding: getPadding(left: 4, top: 30),
                          child: Row(
                            children: [
                              BkBtn(),
                              Text("msg_create_new_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOutfitMedium18Gray900),
                            ],
                          )),
                      VerticalSpace(height: 10),
                      Expanded(
                        child: Container(
                            width: size.width,
                            padding: getPadding(
                                left: 24, top: 35, right: 24, bottom: 35),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder24),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text("msg_please_choose_your".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtOutfitLight16),
                                        CustomTextFormField(
                                            width: 327,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.inputFieldController,
                                            hintText:
                                                "msg_create_new_password".tr,
                                            margin: getMargin(top: 39),
                                            padding:
                                                TextFormFieldPadding.PaddingT11,
                                            fontStyle: TextFormFieldFontStyle
                                                .OutfitLight18Gray400,
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 24,
                                                    top: 12,
                                                    right: 10,
                                                    bottom: 12),
                                                child: CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgCar)),
                                            prefixConstraints: BoxConstraints(
                                                minWidth: getSize(24.00),
                                                minHeight: getSize(24.00)),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "Please enter valid password";
                                              }
                                              return null;
                                            },
                                            isObscureText: true),
                                        CustomTextFormField(
                                            width: 327,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .inputFieldOneController,
                                            hintText:
                                                "msg_confirm_new_password".tr,
                                            margin: getMargin(top: 24),
                                            padding:
                                                TextFormFieldPadding.PaddingT11,
                                            fontStyle: TextFormFieldFontStyle
                                                .OutfitLight18Gray400,
                                            textInputAction:
                                                TextInputAction.done,
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 24,
                                                    top: 12,
                                                    right: 10,
                                                    bottom: 12),
                                                child: CustomImageView(
                                                    svgPath:
                                                        ImageConstant.imgCar)),
                                            prefixConstraints: BoxConstraints(
                                                minWidth: getSize(24.00),
                                                minHeight: getSize(24.00)),
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidPassword(value,
                                                      isRequired: true))) {
                                                return "Please enter valid password";
                                              }
                                              return null;
                                            },
                                            isObscureText: true),
                                      ],
                                    ),
                                  ),
                                  CustomButton(
                                    height: 56,
                                    width: 327,
                                    text: "lbl_next".tr,
                                    onTap: () =>
                                        Get.toNamed(AppRoutes.successScreen),
                                  )
                                ])),
                      ),
                    ],
                  ))
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
