import 'controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_icon_button.dart';

class OnboardingScreen extends GetWidget<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Container(
                height: getVerticalSize(768.00),
                width: size.width,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Container(
                    width: size.width,
                    height: size.height,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: AlignmentDirectional.topStart,
                            end: AlignmentDirectional.topEnd,
                            colors: [
                          ColorConstant.red50.withOpacity(0.2),
                          ColorConstant.red50
                        ])),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          width: size.width,
                          margin: getMargin(
                            top: 30,
                          ),
                          padding: getPadding(
                            left: 62,
                            top: 20,
                            right: 62,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.bgImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomIconButton(
                                    height: 48,
                                    width: 48,
                                    margin: getMargin(bottom: 11),
                                    variant: IconButtonVariant.FillWhiteA700,
                                    shape: IconButtonShape.RoundedBorder16,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.logoo2)),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 4, bottom: 13),
                                    child: Text("Eventix".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOutfitSemiBold32))
                              ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: size.width,
                          padding: getPadding(
                            left: 24,
                            top: 40,
                            right: 24,
                          ),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    margin:
                                        getMargin(top: 81, left: 24, right: 24),
                                    child: Text(
                                        "Discover the Pulse of Saudi Arabia".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtOutfitSemiBold24)),
                                Container(
                                    margin: getMargin(top: 22),
                                    child: Text(
                                        "Discover cultural festivals, sports, and more. With Eventix, find the best Saudi events tailored for you. Start exploring with ease."
                                            .tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtOutfitLight16)),
                                InkWell(
                                  onTap: () =>
                                      Get.toNamed(AppRoutes.loginSignUpScreen),
                                  child: Container(
                                      margin: getMargin(top: 77),
                                      padding: getPadding(all: 8),
                                      decoration: AppDecoration.fillTeal900
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder28),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 9, bottom: 7),
                                                child: Text(
                                                    "lbl_get_started".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtOutfitMedium18WhiteA700)),
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: getMargin(left: 76),
                                                color: ColorConstant.blue100,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder20),
                                                child: Container(
                                                    height: getSize(40.00),
                                                    width: getSize(40.00),
                                                    padding: getPadding(all: 8),
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
                                                        rotateifRtl: true,
                                                        height: getSize(24.00),
                                                        width: getSize(24.00),
                                                        alignment:
                                                            Alignment.center,
                                                      )
                                                    ])))
                                          ])),
                                )
                              ]))),
                  Align(
                    alignment: Alignment(0, -0.44),
                    child: CustomImageView(
                      imagePath: ImageConstant.onBoardingScreen,
                      width: size.width,
                      height: getVerticalSize(270),
                    ),
                  ),
                ]))));
  }
}
