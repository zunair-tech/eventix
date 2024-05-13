import 'package:Eventix/widgets/bg_img.dart';
import 'package:Eventix/widgets/bk_btn.dart';
import 'package:Eventix/widgets/spacing.dart';

import 'controller/choose_method_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';

class ChooseMethodScreen extends GetWidget<ChooseMethodController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Stack(alignment: Alignment.topLeft, children: [
              BgImage(),
              Column(
                children: [
                  Padding(
                      padding: getPadding(left: 4, top: 30),
                      child: Row(
                        children: [
                          BkBtn(),
                          Text("lbl_forgot_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitMedium18Gray900),
                        ],
                      )),
                  VerticalSpace(height: 20),
                  Expanded(
                    child: Container(
                        width: size.width,
                        padding: getPadding(all: 24),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder24),
                        child: Column(
                          children: [
                            Expanded(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(238.00),
                                        child: Text("msg_don_t_worry_it_s".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style:
                                                AppStyle.txtOutfitSemiBold24)),
                                    Container(
                                        width: getHorizontalSize(295.00),
                                        margin: getMargin(top: 22),
                                        child: Text("msg_choose_the_method".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtOutfitLight16)),
                                    VerticalSpace(height: 50),
                                    Obx(() {
                                      return Column(
                                        children: [
                                          InkWell(
                                            onTap: () => controller
                                                .smsSelected.value = true,
                                            child: Container(
                                              padding: getPadding(
                                                  top: 16,
                                                  bottom: 16,
                                                  left: 16,
                                                  right: 16),
                                              decoration: controller
                                                      .smsSelected.value
                                                  ? AppDecoration.fillBlue100
                                                      .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder16,
                                                    )
                                                  : AppDecoration
                                                      .outlineGray2001
                                                      .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder16,
                                                    ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  controller.smsSelected.value
                                                      ? Icon(
                                                          Icons
                                                              .radio_button_checked_rounded,
                                                          color: ColorConstant
                                                              .teal300,
                                                        )
                                                      : Icon(
                                                          Icons
                                                              .radio_button_off_rounded,
                                                          color: Colors.black,
                                                        ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 16,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "lbl_via_sms".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOutfitMedium18Gray900
                                                              .copyWith(
                                                                  color: controller
                                                                          .smsSelected
                                                                          .value
                                                                      ? ColorConstant
                                                                          .teal900
                                                                      : Colors
                                                                          .black),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 8,
                                                          ),
                                                          child: Text(
                                                            "msg_code_will_be_sent"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOutfitLight16,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () => controller
                                                .smsSelected.value = false,
                                            child: Container(
                                              margin: getMargin(
                                                top: 16.0,
                                              ),
                                              padding: getPadding(
                                                  top: 16,
                                                  bottom: 16,
                                                  left: 16,
                                                  right: 16),
                                              decoration: !controller
                                                      .smsSelected.value
                                                  ? AppDecoration.fillBlue100
                                                      .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder16,
                                                    )
                                                  : AppDecoration
                                                      .outlineGray2001
                                                      .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder16,
                                                    ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  !controller.smsSelected.value
                                                      ? Icon(
                                                          Icons
                                                              .radio_button_checked_rounded,
                                                          color: ColorConstant
                                                              .teal300,
                                                        )
                                                      : Icon(
                                                          Icons
                                                              .radio_button_off_rounded,
                                                          color: Colors.black,
                                                        ),
                                                  Padding(
                                                    padding: getPadding(
                                                      left: 16,
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Via Email',
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOutfitMedium18Gray900
                                                              .copyWith(
                                                                  color: !controller
                                                                          .smsSelected
                                                                          .value
                                                                      ? ColorConstant
                                                                          .teal900
                                                                      : Colors
                                                                          .black),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 8,
                                                          ),
                                                          child: Text(
                                                            'code will be sent to *****.com',
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtOutfitLight16,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    }),
                                  ]),
                            ),
                            CustomButton(
                              height: 56,
                              width: 327,
                              text: "lbl_next".tr,
                              onTap: () {
                                if (controller.smsSelected.value)
                                  Get.toNamed(AppRoutes.enterPhoneScreen);
                                else
                                  Get.toNamed(AppRoutes.enterEmailScreen);
                              },
                            )
                          ],
                        )),
                  )
                ],
              )
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
