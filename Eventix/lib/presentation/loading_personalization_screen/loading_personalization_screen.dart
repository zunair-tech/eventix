import 'controller/loading_personalization_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

class LoadingPersonalizationScreen
    extends GetWidget<LoadingPersonalizationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
          backgroundColor: ColorConstant.indigo600,
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: ColorConstant.black900,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.circleBorder20,
                  ),
                  child: Container(
                    height: getSize(
                      80.00,
                    ),
                    width: getSize(
                      80.00,
                    ),
                    padding: getPadding(
                      all: 17,
                    ),
                    decoration: AppDecoration.fillWhiteA70001.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder20,
                    ),
                    child: Stack(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.logoo,
                          height: getSize(
                            45.00,
                          ),
                          width: getSize(
                            45.00,
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 35,
                  ),
                  child: Text(
                    "msg_finding_the_best".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtOutfitMedium16,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
