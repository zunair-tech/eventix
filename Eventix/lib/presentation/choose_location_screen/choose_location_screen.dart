import 'package:Eventix/widgets/bg_img.dart';
import 'package:Eventix/widgets/bk_btn.dart';
import 'package:Eventix/widgets/spacing.dart';

import 'controller/choose_location_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

class ChooseLocationScreen extends GetWidget<ChooseLocationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray5002,
        body: Container(
          height: getVerticalSize(
            768.00,
          ),
          width: size.width,
          child: Stack(
            children: [
              BgImage(),
              Column(
                children: [
                  Padding(
                    padding: getPadding(
                      left: 4,
                      right: 24,
                      top: 30,
                    ),
                    child: Row(
                      children: [
                        BkBtn(),
                        Text(
                          "lbl_choose_country".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOutfitMedium18Gray900,
                        ),
                      ],
                    ),
                  ),
                  VerticalSpace(height: 40),
                  Expanded(
                    child: Container(
                      width: size.width,
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder24,
                      ),
                      padding: getPadding(left: 24, top: 20, right: 24),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '🇪🇬',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtChillaxRegular24,
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 12,
                                  top: 6,
                                  bottom: 4,
                                ),
                                child: Text(
                                  "lbl_honduras".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOutfitLight18,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: getPadding(
                              top: 16,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "🇺🇸",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtChillaxRegular24,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 12,
                                    top: 8,
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    "lbl_hong_kong".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOutfitLight18,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
