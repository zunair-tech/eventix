import 'package:Eventix/presentation/apply_code_bottomsheet/apply_code_bottomsheet.dart';
import 'package:Eventix/widgets/bg_img.dart';
import 'package:Eventix/widgets/bk_btn.dart';
import 'package:Eventix/widgets/spacing.dart';

import '../apply_code_bottomsheet/controller/apply_code_controller.dart';
import 'controller/checkout_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_icon_button.dart';

class CheckoutScreen extends GetWidget<CheckoutController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Stack(children: [
              BgImage(),
              Column(
                children: [
                  Padding(
                      padding: getPadding(top: 30, right: 24, left: 4),
                      child: Row(
                        children: [
                          BkBtn(),
                          Text("lbl_review_order".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitMedium18Gray900),
                        ],
                      )),
                  VerticalSpace(height: 40),
                  Expanded(
                    child: Container(
                        width: size.width,
                        padding: getPadding(top: 24),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder24),
                        child: SingleChildScrollView(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(left: 24, right: 24),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .MDL,
                                        height: getVerticalSize(89.00),
                                        width: getHorizontalSize(112.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(8.00)),
                                        margin: getMargin(bottom: 2)),
                                    Expanded(
                                      child: Padding(
                                          padding: getPadding(left: 16, top: 2),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "MDL BEAST"
                                                        .tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtOutfitMedium16Gray900),
                                                Padding(
                                                    padding: getPadding(top: 8),
                                                    child: Text(
                                                        "Banban, Riyadh"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOutfitLight12Gray900)),
                                                Padding(
                                                    padding: getPadding(top: 4),
                                                    child: Row(children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFolder,
                                                          height:
                                                              getSize(12.00),
                                                          width: getSize(12.00),
                                                          margin: getMargin(
                                                              top: 1,
                                                              bottom: 2)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 4),
                                                          child: Text(
                                                              "Dec 22 2024, 7-11pm"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtOutfitLight12))
                                                    ]))
                                              ])),
                                    )
                                  ]),
                                ),
                                Container(
                                    margin: getMargin(left: 24, right: 24),
                                    child: Column(children: [
                                      Padding(
                                          padding: getPadding(top: 27),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_ticket_type".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtOutfitMedium16Gray900),
                                                Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                        ),
                                                        child: Text(
                                                          "lbl_regular".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOutfitRegular16,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 8,
                                                          bottom: 1,
                                                        ),
                                                        child: Text(
                                                          "SAR75".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOutfitRegular16Blue200,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Padding(
                                                        padding: getPadding(
                                                          bottom: 1,
                                                        ),
                                                        child: Text(
                                                          "lbl_x_2".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOutfitRegular16Gray400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(top: 14),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 1,
                                                        ),
                                                        child: Text(
                                                          "",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOutfitRegular16,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 8,
                                                          bottom: 1,
                                                        ),
                                                        child: Text(
                                                          "",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOutfitRegular16Blue200,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Padding(
                                                        padding: getPadding(
                                                          bottom: 1,
                                                        ),
                                                        child: Text(
                                                          "",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOutfitRegular16Gray400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 24),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_payment_method".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtOutfitMedium16Gray900),
                                                InkWell(
                                                  onTap: () => Get.toNamed(
                                                      AppRoutes
                                                          .paymentMethodOneScreen),
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 13),
                                                      child: Row(children: [
                                                        CustomIconButton(
                                                            height: 48,
                                                            width: 48,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillGray100,
                                                            shape: IconButtonShape
                                                                .RoundedBorder12,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgComputer48x48)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 12,
                                                                top: 3,
                                                                bottom: 2),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Text(
                                                                          "SAB Bank"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtOutfitRegular16)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              4),
                                                                      child: Text(
                                                                          "lbl_5631"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtOutfitLight12))
                                                                ])),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowrightGray900,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00),
                                                            margin: getMargin(
                                                                top: 12,
                                                                bottom: 12))
                                                      ])),
                                                )
                                              ])),
                                    ])),
                                Padding(
                                    padding: getPadding(
                                        top: 40, left: 24, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_order_detail".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOutfitMedium16Gray900),
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text("lbl_apply_code".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOutfitMedium14Teal300))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        top: 14, left: 24, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_ticket".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOutfitLight16Gray400),
                                          Text("SAR75".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOutfitLight16Gray900)
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        top: 11, left: 24, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_discount".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOutfitLight16Gray400),
                                          Text("-SAR15".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOutfitLight16Deeporange500)
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        top: 10, left: 24, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 2, bottom: 2),
                                              child: Text("lbl_total".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOutfitLight16Gray400)),
                                          Text("SAR60".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOutfitSemiBold20Indigo600)
                                        ])),
                                InkWell(
                                  splashColor: Colors.white,
                                  onTap: () => Get.bottomSheet(
                                    ApplyCodeBottomsheet(
                                      Get.put(ApplyCodeController()),
                                    ),
                                    isScrollControlled: true,
                                  ),
                                  child: Container(
                                      margin: getMargin(
                                          top: 23,
                                          bottom: 16,
                                          left: 24,
                                          right: 24),
                                      padding: getPadding(
                                          all: 8, left: 24, right: 24),
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
                                                    top: 10, bottom: 6),
                                                child: Text("lbl_buy_ticket".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtOutfitMedium18WhiteA700)),
                                            Card(
                                                clipBehavior: Clip.antiAlias,
                                                elevation: 0,
                                                margin: getMargin(left: 82),
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
                                                          height:
                                                              getSize(24.00),
                                                          width: getSize(24.00),
                                                          alignment:
                                                              Alignment.center)
                                                    ])))
                                          ])),
                                )
                              ]),
                        )),
                  ),
                ],
              )
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
