import 'package:Eventix/widgets/bk_btn.dart';

import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/core/utils/validation_functions.dart';
import 'package:Eventix/widgets/app_bar/appbar_title.dart';
import 'package:Eventix/widgets/app_bar/custom_app_bar.dart';
import 'package:Eventix/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
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
                child: Container(
                    height: size.height,
                    width: size.width,
                    child: Stack(alignment: Alignment.topLeft, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgOrnament1,
                          height: getVerticalSize(327.00),
                          width: getHorizontalSize(222.00),
                          alignment: Alignment.topRight),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              width: getHorizontalSize(128.00),
                              height: getVerticalSize(80),
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
                                          text: "lbl_login".tr,
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
                                      child: Column(
                                        children: [
                                          Text("msg_login_to_your_account".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtOutfitSemiBold24),
                                          CustomTextFormField(
                                              width: 327,
                                              focusNode: FocusNode(),
                                              controller:
                                                  controller.emailController,
                                              hintText: "lbl_your_email".tr,
                                              margin: getMargin(top: 34),
                                              padding: TextFormFieldPadding
                                                  .PaddingT11,
                                              fontStyle: TextFormFieldFontStyle
                                                  .OutfitLight18Gray400,
                                              prefix: Container(
                                                  margin: getMargin(
                                                      left: 24,
                                                      top: 12,
                                                      right: 10,
                                                      bottom: 12),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgEventoIconsGray400)),
                                              prefixConstraints: BoxConstraints(
                                                  minWidth: getSize(24.00),
                                                  minHeight: getSize(24.00)),
                                              validator: (value) {
                                                if (value == null ||
                                                    (!isValidEmail(value,
                                                        isRequired: true))) {
                                                  return "Please enter valid email";
                                                }
                                                return null;
                                              }),
                                          Obx(() => CustomTextFormField(
                                              width: 327,
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .inputFieldController,
                                              hintText: "lbl_your_password".tr,
                                              margin: getMargin(top: 24),
                                              padding: TextFormFieldPadding
                                                  .PaddingT11_2,
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
                                                      svgPath: ImageConstant
                                                          .imgCar)),
                                              prefixConstraints: BoxConstraints(
                                                  minWidth: getSize(24.00),
                                                  minHeight: getSize(24.00)),
                                              suffix: InkWell(
                                                  onTap: () {
                                                    controller.isShowPassword
                                                            .value =
                                                        !controller
                                                            .isShowPassword
                                                            .value;
                                                  },
                                                  child: Container(
                                                      margin: getMargin(
                                                          left: 30,
                                                          top: 12,
                                                          right: 24,
                                                          bottom: 12),
                                                      child: !controller
                                                              .isShowPassword
                                                              .value
                                                          ? CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgLightbulb)
                                                          : CustomImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .visibilityOn,
                                                              color:
                                                                  ColorConstant
                                                                      .gray400,
                                                            ))),
                                              suffixConstraints: BoxConstraints(
                                                  maxWidth:
                                                      getHorizontalSize(84.00),
                                                  maxHeight:
                                                      getVerticalSize(48.00)),
                                              validator: (value) {
                                                if (value == null ||
                                                    (!isValidPassword(value,
                                                        isRequired: true))) {
                                                  return "Please enter valid password";
                                                }
                                                return null;
                                              },
                                              isObscureText: !controller
                                                  .isShowPassword.value)),
                                          Padding(
                                              padding: getPadding(top: 19),
                                              child: InkWell(
                                                onTap: () => Get.toNamed(
                                                    AppRoutes
                                                        .chooseMethodScreen),
                                                child: Text(
                                                    "msg_forgot_password".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtOutfitMedium14),
                                              )),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () => Get.offNamedUntil(
                                          AppRoutes.homeContainerScreen,
                                          (route) => false),
                                      child: Container(
                                          margin:
                                              getMargin(top: 63, bottom: 20),
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
                                                        top: 11, bottom: 5),
                                                    child: Text("lbl_login".tr,
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
                                                    margin:
                                                        getMargin(left: 101),
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

  onTapArrowleft() {
    Get.back();
  }
}
