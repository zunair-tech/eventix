import 'controller/login_sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';
import 'package:Eventix/widgets/custom_icon_button.dart';
import 'package:Eventix/domain/googleauth/google_auth_helper.dart';
import 'package:Eventix/domain/facebookauth/facebook_auth_helper.dart';

class LoginSignUpScreen extends GetWidget<LoginSignUpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Container(
                height: size.height,
                width: size.width,
                child: Stack(alignment: Alignment.topRight, children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                          width: getHorizontalSize(117.00),
                          margin: getMargin(top: 110, right: 18),
                          padding: getPadding(
                              left: 22, top: 24, right: 22, bottom: 24),
                          decoration: AppDecoration.fillBlue100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder58),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCalendar,
                                    height: getSize(16.00),
                                    width: getSize(16.00)),
                                Padding(
                                    padding: getPadding(top: 4, bottom: 7),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "99".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.teal300,
                                                  fontSize: getFontSize(32),
                                                  fontFamily: 'Outfit',
                                                  fontWeight: FontWeight.w600)),
                                          TextSpan(
                                              text: "lbl13".tr,
                                              style: TextStyle(
                                                  color: ColorConstant.teal900,
                                                  fontSize: getFontSize(32),
                                                  fontFamily: 'Outfit',
                                                  fontWeight: FontWeight.w400))
                                        ]),
                                        textAlign: TextAlign.left))
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          width: size.width,
                          padding: getPadding(
                              left: 95, top: 70, right: 95, bottom: 43),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgGroup12),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 141),
                                    child: Text("msg_let_s_get_started".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOutfitSemiBold24))
                              ]))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: getSize(208.00),
                          width: getSize(208.00),
                          margin: getMargin(left: 16, top: 229),
                          decoration: BoxDecoration(
                              color: ColorConstant.indigo600,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(104.00))))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: getVerticalSize(359.00),
                          width: getHorizontalSize(297.00),
                          margin: getMargin(left: 33, top: 160), // women img
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImages,
                                    height: getVerticalSize(320.00),
                                    width: getHorizontalSize(297.00),
                                    alignment: Alignment.center),
                                CustomIconButton(
                                    height: 55,
                                    width: 55,
                                    margin: getMargin(right: 9, bottom: 46),
                                    variant: IconButtonVariant.FillWhiteA700,
                                    shape: IconButtonShape.RoundedBorder27,
                                    alignment: Alignment.bottomRight,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.logoo2))
                              ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: size.width,
                          padding: getPadding(
                              left: 24, top: 40, right: 24, bottom: 40),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapRowcontinuewithgoogle();
                                    },
                                    child: Container(
                                        margin: getMargin(top: 8),
                                        padding: getPadding(
                                            left: 59,
                                            top: 14,
                                            right: 70,
                                            bottom: 14),
                                        decoration: AppDecoration.outlineGray200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder28),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage5,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00),
                                                  margin: getMargin(
                                                      top: 1, bottom: 1)),
                                              Padding(
                                                  padding: getPadding(top: 4),
                                                  child: Text(
                                                      "msg_continue_with_google"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOutfitMedium18Gray900))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapRowcontinuewithfacebook();
                                    },
                                    child: Container(
                                        margin: getMargin(top: 16),
                                        padding: getPadding(
                                            left: 49,
                                            top: 15,
                                            right: 49,
                                            bottom: 15),
                                        decoration: AppDecoration.outlineGray200
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder28),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage6,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00)),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text(
                                                      "msg_continue_with_facebook"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOutfitMedium18Gray900))
                                            ]))),
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomButton(
                                            height: 56,
                                            width: 155,
                                            text: "lbl_login".tr,
                                            onTap: () => Get.toNamed(
                                                AppRoutes.loginScreen),
                                          ),
                                          CustomButton(
                                            height: 56,
                                            width: 156,
                                            text: "lbl_sign_up".tr,
                                            variant: ButtonVariant.FillBlue100,
                                            fontStyle: ButtonFontStyle
                                                .OutfitMedium18Teal900,
                                            onTap: () => Get.toNamed(
                                                AppRoutes.signUpScreen),
                                          )
                                        ]))
                              ])))
                ]))));
  }

  onTapRowcontinuewithgoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapRowcontinuewithfacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
