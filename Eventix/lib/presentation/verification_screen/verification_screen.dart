import 'package:Eventix/widgets/bk_btn.dart';
import 'package:Eventix/widgets/spacing.dart';

import 'controller/verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';

class VerificationScreen extends GetWidget<VerificationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Stack(alignment: Alignment.topLeft, children: [
              Column(
                children: [
                  Padding(
                      padding: getPadding(left: 4, top: 30),
                      child: Row(
                        children: [
                          BkBtn(),
                          Text("lbl_verification".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitMedium18Gray900),
                        ],
                      )),
                  VerticalSpace(height: 20),
                  Expanded(
                    child: Container(
                        width: size.width,
                        padding: getPadding(
                            left: 24, top: 23, right: 24, bottom: 23),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder24),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text("msg_enter_verification".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOutfitSemiBold24),
                                    Container(
                                        width: getHorizontalSize(279.00),
                                        margin: getMargin(top: 18),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "msg_please_type_the2".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray600,
                                                      fontSize: getFontSize(16),
                                                      fontFamily: 'Outfit',
                                                      fontWeight:
                                                          FontWeight.w300)),
                                            ]),
                                            textAlign: TextAlign.center)),
                                    Padding(
                                        padding: getPadding(top: 40),
                                        child: Container(
                                            width: getHorizontalSize(240.00),
                                            child: Obx(() => PinCodeTextField(
                                                appContext: context,
                                                controller: controller
                                                    .otpController.value,
                                                length: 4,
                                                obscureText: false,
                                                obscuringCharacter: '*',
                                                keyboardType:
                                                    TextInputType.number,
                                                autoDismissKeyboard: true,
                                                enableActiveFill: true,
                                                inputFormatters: [
                                                  FilteringTextInputFormatter
                                                      .digitsOnly
                                                ],
                                                onChanged: (value) {},
                                                textStyle: TextStyle(
                                                    color:
                                                        ColorConstant.gray900,
                                                    fontSize: getFontSize(18),
                                                    fontFamily: 'Outfit',
                                                    fontWeight:
                                                        FontWeight.w300),
                                                pinTheme: PinTheme(
                                                    fieldHeight:
                                                        getHorizontalSize(
                                                            48.00),
                                                    fieldWidth: getHorizontalSize(
                                                        48.00),
                                                    shape: PinCodeFieldShape
                                                        .circle,
                                                    selectedFillColor:
                                                        Colors.transparent,
                                                    activeFillColor:
                                                        Colors.transparent,
                                                    inactiveFillColor:
                                                        Colors.transparent,
                                                    inactiveColor:
                                                        ColorConstant.gray200,
                                                    selectedColor: ColorConstant.gray200,
                                                    activeColor: ColorConstant.teal300))))),
                                    Padding(
                                        padding: getPadding(top: 64),
                                        child: Text("lbl_resend_my_code".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtOutfitMedium14)),
                                  ],
                                ),
                              ),
                              CustomButton(
                                height: 56,
                                width: 327,
                                text: "lbl_next".tr,
                                onTap: () =>
                                    Get.toNamed(AppRoutes.newPasswordScreen),
                              )
                            ])),
                  ),
                ],
              )
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
