import 'package:Eventix/widgets/bg_img.dart';

import '../home_page/widgets/listcountry_one_item_widget.dart';
import '../home_page/widgets/listunsplashk4cvkfs5cta_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/listcountry_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray5002,
        body: Container(
          width: size.width,
          decoration: AppDecoration.fillGray5002,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              BgImage(),
              Column(
                children: [
                  Padding(
                    padding: getPadding(
                      left: 24,
                      right: 24,
                      top: 40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hi Saud!".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOutfitSemiBold20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLocation,
                              height: getSize(
                                16.00,
                              ),
                              width: getSize(
                                16.00,
                              ),
                              margin: getMargin(
                                top: 2,
                                bottom: 4,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                              ),
                              child: Text(
                                "Riyadh".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtOutfitLight18Indigo600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: getVerticalSize(74),
                    margin: getMargin(left: 24, top: 33, right: 24, bottom: 20),
                    padding: getPadding(
                      all: 8,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgLocation56x56,
                          height: getSize(
                            56.00,
                          ),
                          width: getSize(
                            56.00,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 16,
                            top: 9,
                            bottom: 6,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "msg_find_nearby_events".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtOutfitMedium16Gray900,
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                ),
                                child: Text(
                                  "msg_events_with_nearest".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOutfitLight12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightGray900,
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                          margin: getMargin(
                            left: 48,
                            top: 16,
                            right: 8,
                            bottom: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(left: 24, right: 24),
                            child: Text(
                              "lbl_trending".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitLight18Gray600,
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              148.00,
                            ),
                            child: Obx(
                              () => ListView.builder(
                                padding:
                                    getPadding(top: 12, right: 24, left: 24),
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: controller.homeModelObj.value
                                    .listcountryOneItemList.length,
                                itemBuilder: (context, index) {
                                  ListcountryOneItemModel model = controller
                                      .homeModelObj
                                      .value
                                      .listcountryOneItemList[index];
                                  return ListcountryOneItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(top: 20, right: 24, left: 24),
                            child: Text(
                              "lbl_best_for_you".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitLight18Gray600,
                            ),
                          ),
                          Padding(
                            padding: getPadding(left: 24, right: 24),
                            child: Obx(
                              () => ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.homeModelObj.value
                                    .listunsplashk4cvkfs5ctaItemList.length,
                                itemBuilder: (context, index) {
                                  ListcountryOneItemModel model = controller
                                      .homeModelObj
                                      .value
                                      .listunsplashk4cvkfs5ctaItemList[index];
                                  return Listunsplashk4cvkfs5ctaItemWidget(
                                    model,
                                  );
                                },
                              ),
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
