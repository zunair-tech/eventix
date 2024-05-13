import '../../favorite_events_page/models/favoriteevents_item_model.dart';
import '../controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget(this.searchItemModelObj);

  FavoriteeventsItemModel searchItemModelObj;

  var controller = Get.find<MySearchController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(AppRoutes.eventDetailsScreen),
      child: Container(
        margin: getMargin(
          top: 8.0,
          bottom: 8.0,
        ),
        padding: getPadding(
          top: 13,
          bottom: 13,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomImageView(
              imagePath: searchItemModelObj.img,
              height: getVerticalSize(
                100.00,
              ),
              width: getHorizontalSize(
                103.00,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              margin: getMargin(
                top: 3,
                bottom: 3,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgFolder,
                        height: getSize(
                          12.00,
                        ),
                        width: getSize(
                          12.00,
                        ),
                        margin: getMargin(
                          top: 6,
                          bottom: 6,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 4,
                          top: 6,
                          bottom: 4,
                        ),
                        child: Text(
                          "Apr 3 | 9:30                    ".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOutfitLight10Gray400,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgLocation40x40,
                        height: getSize(
                          24.00,
                        ),
                        width: getSize(
                          24.00,
                        ),
                        margin: getMargin(
                          left: 40,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: getHorizontalSize(
                      146.00,
                    ),
                    margin: getMargin(
                      top: 10,
                    ),
                    child: Text(
                      searchItemModelObj.name,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOutfitMedium16Gray900,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      176.00,
                    ),
                    margin: getMargin(
                      top: 7,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Text(
                            "KingdomArena".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOutfitLight12,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Text(
                            "SAR75".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOutfitRegular12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
