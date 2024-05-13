import 'controller/organizer_profile_about_controller.dart';
import 'models/organizer_profile_about_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OrganizerProfileAboutPage extends StatelessWidget {
  OrganizerProfileAboutController controller = Get.put(
      OrganizerProfileAboutController(OrganizerProfileAboutModel().obs));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: getPadding(left: 24, right: 24, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: getPadding(
              left: 20,
              top: 11,
              right: 20,
              bottom: 11,
            ),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_10k".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOutfitSemiBold24Teal300,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 6,
                      ),
                      child: Text(
                        "lbl_ticket_sold".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitRegular14,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    left: 45,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_25k".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitSemiBold24Teal300,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 6,
                        ),
                        child: Text(
                          "lbl_followers".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOutfitRegular14,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 58,
                    right: 13,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_53".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitSemiBold24Teal300,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 6,
                        ),
                        child: Text(
                          "lbl_events".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOutfitRegular14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: getHorizontalSize(
              322.00,
            ),
            margin: getMargin(
              top: 20,
            ),
            child: Text(
              "msg_lorem_ipsum_dolor4".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtOutfitLight16,
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: getMargin(
              top: 30,
              bottom: 20,
            ),
            color: ColorConstant.whiteA700,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Container(
              height: getVerticalSize(
                172.00,
              ),
              width: getHorizontalSize(
                327.00,
              ),
              padding: getPadding(
                all: 8,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMapsiclemap,
                    height: getVerticalSize(
                      156.00,
                    ),
                    width: getHorizontalSize(
                      311.00,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        10.00,
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgLocation32x32,
                    height: getSize(
                      32.00,
                    ),
                    width: getSize(
                      32.00,
                    ),
                    alignment: Alignment.topRight,
                    margin: getMargin(
                      top: 52,
                      right: 130,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
