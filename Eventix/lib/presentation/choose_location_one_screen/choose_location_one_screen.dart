import 'controller/choose_location_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';

class ChooseLocationOneScreen extends GetWidget<ChooseLocationOneController> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Container(
                height: getVerticalSize(768.00),
                width: size.width,
                child: Stack(alignment: Alignment.topLeft, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgOrnament36,
                      height: getVerticalSize(327.00),
                      width: getHorizontalSize(222.00),
                      alignment: Alignment.topRight),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: getVerticalSize(60.00),
                          width: getHorizontalSize(128.00),
                          margin: getMargin(top: 8),
                          padding: getPadding(
                              left: 24, top: 12, right: 24, bottom: 12),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(ImageConstant.imgVector),
                                  fit: BoxFit.cover)),
                          child: Stack(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowleft,
                                height: getSize(24.00),
                                width: getSize(24.00),
                                alignment: Alignment.topLeft,
                                onTap: () {
                                  onTapImgArrowleft();
                                })
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: size.width,
                          padding: getPadding(
                              left: 24, top: 23, right: 24, bottom: 23),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Text("lbl31".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtChillaxRegular24),
                                  Padding(
                                      padding: getPadding(
                                          left: 12, top: 8, bottom: 2),
                                      child: Text("lbl_uk_english".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtOutfitLight18))
                                ]),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(children: [
                                      Text("lbl32".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtChillaxRegular24),
                                      Padding(
                                          padding: getPadding(
                                              left: 12, top: 8, bottom: 2),
                                          child: Text("lbl_us_english".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtOutfitMedium18)),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgCheckmark,
                                          height: getSize(24.00),
                                          width: getSize(24.00),
                                          margin: getMargin(top: 5, bottom: 4))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(children: [
                                      Text("lbl33".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtChillaxRegular24),
                                      Padding(
                                          padding: getPadding(
                                              left: 12, top: 8, bottom: 2),
                                          child: Text("lbl_japanese".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtOutfitLight18))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(children: [
                                      Text("lbl34".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtChillaxRegular24),
                                      Padding(
                                          padding: getPadding(
                                              left: 12, top: 6, bottom: 4),
                                          child: Text("lbl_german".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtOutfitLight18))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(children: [
                                      Text("lbl35".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtChillaxRegular24),
                                      Padding(
                                          padding: getPadding(
                                              left: 12, top: 8, bottom: 2),
                                          child: Text("lbl_spanish".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtOutfitLight18))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(children: [
                                      Text("lbl36".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtChillaxRegular24),
                                      Padding(
                                          padding: getPadding(
                                              left: 12, top: 6, bottom: 4),
                                          child: Text("lbl_francais".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtOutfitLight18))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(children: [
                                      Text("lbl37".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtChillaxRegular24),
                                      Padding(
                                          padding: getPadding(
                                              left: 12, top: 6, bottom: 4),
                                          child: Text("lbl_greek".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtOutfitLight18))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(children: [
                                      Text("lbl12".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtChillaxRegular24),
                                      Padding(
                                          padding: getPadding(
                                              left: 12, top: 6, bottom: 4),
                                          child: Text("lbl_italian".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtOutfitLight18))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(children: [
                                      Text("lbl38".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtChillaxRegular24),
                                      Padding(
                                          padding: getPadding(
                                              left: 12, top: 6, bottom: 4),
                                          child: Text("lbl_dutch".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtOutfitLight18))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Row(children: [
                                      Text("lbl39".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtChillaxRegular24),
                                      Padding(
                                          padding: getPadding(
                                              left: 12, top: 6, bottom: 4),
                                          child: Text("lbl_arabic".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtOutfitLight18))
                                    ])),
                                CustomButton(
                                    height: 56,
                                    width: 327,
                                    text: "lbl_next".tr,
                                    margin: getMargin(top: 88, bottom: 16))
                              ]))),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: getPadding(left: 64, top: 22),
                          child: Text("lbl_language".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitMedium18Gray900)))
                ]))));
  }

  

  onTapImgArrowleft() {
    Get.back();
  }
}
