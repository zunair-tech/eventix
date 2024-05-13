import 'controller/direction_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/app_bar/appbar_image.dart';
import 'package:Eventix/widgets/app_bar/appbar_title.dart';
import 'package:Eventix/widgets/app_bar/custom_app_bar.dart';
import 'package:Eventix/widgets/custom_button.dart';
import 'package:Eventix/widgets/custom_icon_button.dart';

class DirectionScreen extends GetWidget<DirectionController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            appBar: CustomAppBar(
                height: getVerticalSize(68.00),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 20, bottom: 24),
                    onTap: onTapArrowleft5),
                title: Row(children: [
                  AppbarTitle(
                      text: "msg_art_exhibition".tr,
                      margin: getMargin(left: 16, top: 20, bottom: 24)),
                  CustomButton(
                      height: 24,
                      width: 107,
                      text: "lbl_distance_1_4km".tr,
                      margin:
                          getMargin(left: 55, top: 20, right: 24, bottom: 24),
                      variant: ButtonVariant.FillGray5002,
                      shape: ButtonShape.CircleBorder12,
                      padding: ButtonPadding.PaddingAll5,
                      fontStyle: ButtonFontStyle.OutfitLight12)
                ]),
                styleType: Style.bgFillWhiteA700),
            body: Container(
                height: getVerticalSize(768.00),
                width: size.width,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: getVerticalSize(564.00),
                          width: size.width,
                          margin: getMargin(top: 11),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage564x375,
                                height: getVerticalSize(564.00),
                                width: getHorizontalSize(375.00),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(left: 10, bottom: 46),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              margin: getMargin(
                                                  left: 34, right: 125),
                                              padding: getPadding(
                                                  left: 8,
                                                  top: 6,
                                                  right: 8,
                                                  bottom: 6),
                                              decoration: AppDecoration
                                                  .fillWhiteA700
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder12),
                                              child: Row(children: [
                                                CustomIconButton(
                                                    height: 32,
                                                    width: 32,
                                                    margin: getMargin(
                                                        top: 1, bottom: 1),
                                                    variant: IconButtonVariant
                                                        .FillTeal900,
                                                    padding: IconButtonPadding
                                                        .PaddingAll8,
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgLock)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 8,
                                                        top: 1,
                                                        right: 12),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "msg_jogja_expo_center"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtOutfitMedium12),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "lbl_1km".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtOutfitLight12Gray400))
                                                        ]))
                                              ])),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgLine,
                                              height: getVerticalSize(51.00),
                                              width: getHorizontalSize(39.00)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgDirection,
                                              height: getVerticalSize(144.00),
                                              width: getHorizontalSize(267.00),
                                              alignment: Alignment.centerRight,
                                              margin: getMargin(top: 41))
                                        ])))
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: getVerticalSize(112.00),
                          width: size.width,
                          margin: getMargin(bottom: 156),
                          decoration:
                              BoxDecoration(color: ColorConstant.teal9007e))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: size.width,
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 24, top: 24, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomIconButton(
                                              height: 48,
                                              width: 48,
                                              shape: IconButtonShape
                                                  .RoundedBorder12,
                                              child: CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgReply)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 4, bottom: 3),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "lbl_deadwood_street"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOutfitMedium16Indigo600),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 3),
                                                        child: Text(
                                                            "lbl_100m".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOutfitLight12))
                                                  ])),
                                          Spacer(),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgCar24x24,
                                              height: getSize(24.00),
                                              width: getSize(24.00),
                                              margin: getMargin(
                                                  top: 12, bottom: 12))
                                        ])),
                                Container(
                                    width: size.width,
                                    margin: getMargin(top: 16),
                                    padding: getPadding(all: 24),
                                    decoration: AppDecoration.fillGray5002
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUnsplashr1swcaghvg0,
                                              height: getVerticalSize(100.00),
                                              width: getHorizontalSize(103.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(8.00)),
                                              margin: getMargin(bottom: 8)),
                                          Padding(
                                              padding: getPadding(bottom: 10),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                208.00),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          141.00),
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              4),
                                                                  child: Text(
                                                                      "msg_international_skateboard"
                                                                          .tr,
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtOutfitMedium16Gray900)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          bottom:
                                                                              32),
                                                                  child: Text(
                                                                      "lbl_19_00"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtOutfitLight12))
                                                            ])),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 12),
                                                        child: Text(
                                                            "msg_jogja_expo_center"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOutfitLight12Gray900)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 3),
                                                        child: Text(
                                                            "msg_2527_lakewood_drive"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOutfitLight12))
                                                  ]))
                                        ]))
                              ])))
                ]))));
  }

  onTapArrowleft5() {
    Get.back();
  }
}
