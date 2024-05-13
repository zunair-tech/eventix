import 'package:Eventix/widgets/custom_checkbox.dart';

import '../../widgets/bk_btn.dart';
import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/core/utils/validation_functions.dart';
import 'package:Eventix/widgets/app_bar/appbar_title.dart';
import 'package:Eventix/widgets/app_bar/custom_app_bar.dart';
import 'package:Eventix/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray5002,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                    width: size.width,
                    child: Stack(alignment: Alignment.topLeft, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgOrnament2,
                          height: getVerticalSize(327.00),
                          width: getHorizontalSize(222.00),
                          alignment: Alignment.topRight),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              width: getHorizontalSize(128.00),
                              margin: getMargin(top: 8),
                              padding: getPadding(top: 12, bottom: 12),
                              child: Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional.topStart,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.bgImage,
                                    ),
                                  ),
                                  CustomAppBar(
                                      height: getVerticalSize(56.00),
                                      leadingWidth: 48,
                                      leading: Container(
                                        margin: getMargin(left: 24, bottom: 1),
                                        child: BkBtn(),
                                      ),
                                      title: AppbarTitle(
                                          text: "lbl_signup2".tr,
                                          margin: getMargin(left: 16))),
                                ],
                              ))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              width: size.width,
                              height: size.height - getVerticalSize(100),
                              padding: getPadding(
                                  left: 24, top: 26, right: 24, bottom: 26),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder24),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Text(
                                                "msg_sign_up_to_get_started".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitSemiBold24),
                                            CustomTextFormField(
                                                width: 327,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .inputFieldController,
                                                hintText: "lbl_your_email".tr,
                                                margin: getMargin(top: 34),
                                                padding: TextFormFieldPadding
                                                    .PaddingT11,
                                                prefix: Container(
                                                    margin: getMargin(
                                                        left: 24,
                                                        top: 12,
                                                        right: 10,
                                                        bottom: 12),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgEventoIconsGray400)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        minWidth:
                                                            getSize(24.00),
                                                        minHeight:
                                                            getSize(24.00)),
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidEmail(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid email";
                                                  }
                                                  return null;
                                                }),
                                            Padding(
                                                padding: getPadding(top: 24),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      CustomTextFormField(
                                                          width: 155,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .inputFieldOneController,
                                                          hintText:
                                                              "lbl_first_name"
                                                                  .tr,
                                                          validator: (value) {
                                                            if (!isText(
                                                                value)) {
                                                              return "Please enter valid text";
                                                            }
                                                            return null;
                                                          }),
                                                      CustomTextFormField(
                                                          width: 155,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .inputFieldTwoController,
                                                          hintText:
                                                              "lbl_surname".tr,
                                                          validator: (value) {
                                                            if (!isText(
                                                                value)) {
                                                              return "Please enter valid text";
                                                            }
                                                            return null;
                                                          })
                                                    ])),
                                            CustomTextFormField(
                                                width: 327,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .inputFieldThreeController,
                                                hintText:
                                                    "lbl_create_password".tr,
                                                margin: getMargin(top: 24),
                                                padding: TextFormFieldPadding
                                                    .PaddingT11,
                                                prefix: Container(
                                                    margin: getMargin(
                                                        left: 24,
                                                        top: 12,
                                                        right: 10,
                                                        bottom: 12),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCar)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        minWidth:
                                                            getSize(24.00),
                                                        minHeight:
                                                            getSize(24.00)),
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
                                                    .inputFieldFourController,
                                                hintText:
                                                    "msg_confirm_password".tr,
                                                margin: getMargin(top: 24),
                                                padding: TextFormFieldPadding
                                                    .PaddingT11,
                                                textInputAction:
                                                    TextInputAction.done,
                                                prefix: Container(
                                                    margin: getMargin(
                                                        left: 24,
                                                        top: 12,
                                                        right: 10,
                                                        bottom: 12),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCar)),
                                                prefixConstraints:
                                                    BoxConstraints(
                                                        minWidth:
                                                            getSize(24.00),
                                                        minHeight:
                                                            getSize(24.00)),
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
                                    ),
                                    Padding(
                                      padding: getPadding(left: 10, right: 10),
                                      child: Obx(() {
                                        return CustomCheckbox(
                                          widget: Container(
                                              width: getHorizontalSize(282.00),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text:
                                                            "msg_i_have_read_and2"
                                                                .tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .gray400,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Outfit',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w300)),
                                                    TextSpan(
                                                        text:
                                                            "msg_terms_of_service"
                                                                .tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .indigo600,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Outfit',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500))
                                                  ]),
                                                  textAlign: TextAlign.left)),
                                          value: controller.checkboxVal.value,
                                          shape: CheckboxShape.RoundedBorder2,
                                          iconSize: 20,
                                          onChange: (val) => controller
                                              .checkboxVal.value = val,
                                        );
                                      }),
                                    ),
                                    InkWell(
                                      onTap: () => Get.toNamed(
                                          AppRoutes.favoriteEventScreen),
                                      child: Container(
                                          margin:
                                              getMargin(top: 33, bottom: 13),
                                          padding: getPadding(all: 8),
                                          decoration: AppDecoration.fillTeal900
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder28),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 11, bottom: 6),
                                                    child: Text(
                                                        "lbl_sign_up".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOutfitMedium18WhiteA700)),
                                                Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: getMargin(left: 93),
                                                    color:
                                                        ColorConstant.blue100,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder20),
                                                    child: Container(
                                                        height: getSize(40.00),
                                                        width: getSize(40.00),
                                                        padding:
                                                            getPadding(all: 8),
                                                        decoration: AppDecoration
                                                            .fillBlue100
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder20),
                                                        child: Stack(children: [
                                                          CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowright,
                                                              height: getSize(
                                                                  24.00),
                                                              width: getSize(
                                                                  24.00),
                                                              alignment:
                                                                  Alignment
                                                                      .center)
                                                        ])))
                                              ])),
                                    )
                                  ])))
                    ])))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
