import 'package:Eventix/presentation/logout_bottomsheet/controller/logout_controller.dart';
import 'package:Eventix/presentation/logout_bottomsheet/logout_bottomsheet.dart';
import 'package:Eventix/presentation/select_language_screen/select_language_screen.dart';
import 'package:Eventix/widgets/custom_switch.dart';

import 'controller/ticket_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/app_bar/appbar_image.dart';
import 'package:Eventix/widgets/app_bar/appbar_title.dart';
import 'package:Eventix/widgets/app_bar/custom_app_bar.dart';
import 'package:Eventix/widgets/custom_icon_button.dart';

//ignore: must_be_immutable
class TicketOneScreen extends StatelessWidget {
  var controller = Get.put(TicketOneController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray5002,
        appBar: CustomAppBar(
          height: getVerticalSize(
            92.00,
          ),
          leadingWidth: 96,
          leading: CustomImageView(
            imagePath: ImageConstant.imgProfilepict,
            height: getSize(
              72.00,
            ),
            width: getSize(
              72.00,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                24.00,
              ),
            ),
            margin: getMargin(left: 24, top: 20),
          ),
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppbarTitle(
                text: "Saud Fahad".tr,
                margin: getMargin(right: 40, top: 20),
              ),
              Padding(
                padding: getPadding(
                  top: 10,
                ),
                child: Text(
                  "Saud@eventix.com".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOutfitLight14,
                ),
              ),
            ],
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              svgPath: ImageConstant.imgTelevision,
              margin: getMargin(
                left: 24,
                right: 24,
              ),
              onTap: () => Get.bottomSheet(
                  LogoutBottomsheet(Get.put(LogoutController())),
                  isScrollControlled: true),
            ),
          ],
        ),
        body: Padding(
          padding: getPadding(left: 24, right: 24, top: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Get.toNamed(AppRoutes.editProfileScreen),
                child: Container(
                  padding: getPadding(
                    all: 8,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin: EdgeInsets.all(0),
                        color: ColorConstant.blue100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Container(
                          height: getSize(
                            40.00,
                          ),
                          width: getSize(
                            40.00,
                          ),
                          padding: getPadding(
                            all: 12,
                          ),
                          decoration: AppDecoration.fillBlue100.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Stack(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgUser16x16,
                                height: getSize(
                                  16.00,
                                ),
                                width: getSize(
                                  16.00,
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 11,
                          bottom: 10,
                        ),
                        child: Text(
                          "lbl_edit_profile".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOutfitRegular14,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        rotateifRtl: true,
                        svgPath: ImageConstant.imgArrowrightGray900,
                        height: getSize(
                          24.00,
                        ),
                        width: getSize(
                          24.00,
                        ),
                        margin: getMargin(
                          top: 8,
                          bottom: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => Get.to(SelectLanguageScreen()),
                child: Container(
                  margin: getMargin(
                    top: 16,
                  ),
                  padding: getPadding(
                    all: 8,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 40,
                        width: 40,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgGlobe,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 13,
                          bottom: 8,
                        ),
                        child: Text(
                          "lbl_language".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOutfitRegular14,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: getPadding(
                          top: 13,
                          bottom: 11,
                        ),
                        child: Text(
                          "lbl_english".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOutfitLight12,
                        ),
                      ),
                      CustomImageView(
                        rotateifRtl: true,
                        svgPath: ImageConstant.imgArrowrightGray900,
                        height: getSize(
                          24.00,
                        ),
                        width: getSize(
                          24.00,
                        ),
                        margin: getMargin(
                          left: 8,
                          top: 8,
                          bottom: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => Get.toNamed(AppRoutes.notificationScreen),
                child: Container(
                  margin: getMargin(
                    top: 16,
                  ),
                  padding: getPadding(
                    all: 8,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 40,
                        width: 40,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgNotification,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 11,
                          bottom: 10,
                        ),
                        child: Text(
                          "lbl_notification".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOutfitRegular14,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: getHorizontalSize(
                          22.00,
                        ),
                        margin: getMargin(
                          top: 10,
                          bottom: 10,
                        ),
                        padding: getPadding(
                          left: 7,
                          top: 1,
                          right: 7,
                          bottom: 1,
                        ),
                        decoration: AppDecoration.txtFillTeal300.copyWith(
                          borderRadius: BorderRadiusStyle.txtCircleBorder8,
                        ),
                        child: Text(
                          "lbl_32".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOutfitLight12WhiteA700,
                        ),
                      ),
                      CustomImageView(
                        rotateifRtl: true,
                        svgPath: ImageConstant.imgArrowrightGray900,
                        height: getSize(
                          24.00,
                        ),
                        width: getSize(
                          24.00,
                        ),
                        margin: getMargin(
                          left: 8,
                          top: 8,
                          bottom: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Obx(() {
                return InkWell(
                  onTap: () => controller.darkModeSwitch.value =
                      !controller.darkModeSwitch.value,
                  child: Container(
                    margin: getMargin(
                      top: 16,
                    ),
                    padding: getPadding(
                      all: 8,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 40,
                          width: 40,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgEventoIcons16x16,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 11,
                            bottom: 10,
                          ),
                          child: Text(
                            "lbl_dark_mode".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOutfitRegular14,
                          ),
                        ),
                        Spacer(),
                        CustomSwitch(
                          value: controller.darkModeSwitch.value,
                          onChanged: (value) =>
                              controller.darkModeSwitch.value = value,
                        ),
                      ],
                    ),
                  ),
                );
              }),
              InkWell(
                onTap: () => Get.toNamed(AppRoutes.paymentMethodScreen),
                child: Container(
                  margin: getMargin(
                    top: 16,
                  ),
                  padding: getPadding(
                    all: 8,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconButton(
                        height: 40,
                        width: 40,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgComputer48x48,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 12,
                          bottom: 9,
                        ),
                        child: Text(
                          "lbl_payment_method".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOutfitRegular14,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: getPadding(
                          top: 11,
                          bottom: 12,
                        ),
                        child: Text(
                          "lbl_visa_451".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOutfitLight12,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgArrowrightGray900,
                        rotateifRtl: true,
                        height: getSize(
                          24.00,
                        ),
                        width: getSize(
                          24.00,
                        ),
                        margin: getMargin(
                          left: 8,
                          top: 8,
                          bottom: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  top: 16,
                ),
                padding: getPadding(
                  all: 8,
                ),
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: ColorConstant.blue100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Container(
                        height: getSize(
                          40.00,
                        ),
                        width: getSize(
                          40.00,
                        ),
                        padding: getPadding(
                          all: 12,
                        ),
                        decoration: AppDecoration.fillBlue100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgMenu16x16,
                              height: getSize(
                                16.00,
                              ),
                              width: getSize(
                                16.00,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 11,
                        bottom: 10,
                      ),
                      child: Text(
                        "lbl_faqs".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitRegular14,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightGray900,
                      rotateifRtl: true,
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                      margin: getMargin(
                        top: 8,
                        bottom: 8,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: getMargin(
                  top: 16,
                ),
                padding: getPadding(
                  all: 8,
                ),
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: ColorConstant.blue100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Container(
                        height: getSize(
                          40.00,
                        ),
                        width: getSize(
                          40.00,
                        ),
                        padding: getPadding(
                          all: 12,
                        ),
                        decoration: AppDecoration.fillBlue100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgInfo,
                              height: getSize(
                                16.00,
                              ),
                              width: getSize(
                                16.00,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 12,
                        bottom: 9,
                      ),
                      child: Text(
                        "lbl_about_app".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitRegular14,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowrightGray900,
                      rotateifRtl: true,
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                      margin: getMargin(
                        top: 8,
                        bottom: 8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
