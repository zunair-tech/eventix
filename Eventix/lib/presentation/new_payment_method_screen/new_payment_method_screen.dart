import 'package:Eventix/widgets/bg_img.dart';
import 'package:Eventix/widgets/bk_btn.dart';
import 'package:Eventix/widgets/spacing.dart';

import 'controller/new_payment_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/core/utils/validation_functions.dart';
import 'package:Eventix/widgets/custom_button.dart';
import 'package:Eventix/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NewPaymentMethodScreen extends GetWidget<NewPaymentMethodController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Stack(children: [
                  BgImage(),
                  Column(
                    children: [
                      Padding(
                          padding: getPadding(left: 4, top: 30),
                          child: Row(
                            children: [
                              BkBtn(),
                              Text("msg_new_payment_method".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOutfitMedium18Gray900),
                            ],
                          )),
                      VerticalSpace(height: 30),
                      Expanded(
                        child: Container(
                            width: size.width,
                            padding: getPadding(
                                left: 23, top: 32, right: 23, bottom: 32),
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
                                        CustomTextFormField(
                                            width: size.width,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.inputFieldController,
                                            fontStyle: TextFormFieldFontStyle
                                                .OutfitLight18Gray400,
                                            hintText:
                                                "Saud Fahad".tr),
                                        CustomTextFormField(
                                            width: size.width,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .inputFieldOneController,
                                            hintText: "lbl_card_number".tr,
                                            margin: getMargin(top: 24),
                                            fontStyle: TextFormFieldFontStyle
                                                .OutfitLight18Gray400,
                                            validator: (value) {
                                              if (!isNumeric(value)) {
                                                return "Please enter valid number";
                                              }
                                              return null;
                                            }),
                                        Padding(
                                            padding:
                                                getPadding(left: 1, top: 24),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomTextFormField(
                                                      width: 155,
                                                      focusNode: FocusNode(),
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .OutfitLight18Gray400,
                                                      controller: controller
                                                          .priceController,
                                                      hintText:
                                                          "lbl_exp_date".tr),
                                                  CustomTextFormField(
                                                      width: 155,
                                                      focusNode: FocusNode(),
                                                      fontStyle:
                                                          TextFormFieldFontStyle
                                                              .OutfitLight18Gray400,
                                                      controller: controller
                                                          .inputFieldTwoController,
                                                      hintText: "lbl_cvv".tr,
                                                      textInputAction:
                                                          TextInputAction.done)
                                                ])),
                                      ],
                                    ),
                                  ),
                                  CustomButton(
                                      height: 56,
                                      width: 327,
                                      text: "lbl_add_card".tr,
                                      margin: getMargin(
                                        bottom: 20,
                                      ))
                                ])),
                      ),
                    ],
                  )
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
