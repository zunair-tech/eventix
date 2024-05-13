import '../../favorite_events_page/models/favoriteevents_item_model.dart';
import '../controller/organizer_profile_events_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore: must_be_immutable
class EventItemWidget extends StatelessWidget {
  EventItemWidget(this.eventItemModelObj);

  FavoriteeventsItemModel eventItemModelObj;

  var controller = Get.find<OrganizerProfileEventsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: getMargin(
          top: 8.0,
          bottom: 8.0,
        ),
        padding: getPadding(
          left: 16,
          top: 14,
          right: 16,
          bottom: 14,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUnsplash9lj6xqp7mly,
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
                top: 1,
                bottom: 1,
              ),
            ),
            Expanded(
              child: Padding(
                padding: getPadding(
                  left: 16,
                  top: 1,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                "msg_dec_22_31_11am_5pm".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtOutfitLight10Gray400,
                              ),
                            ),
                          ],
                        ),
                        Obx(() {
                          return CustomImageView(
                            svgPath: eventItemModelObj.isFav.value
                                ? ImageConstant.favbold
                                : ImageConstant.imgFavorite,
                            height: getSize(
                              24.00,
                            ),
                            width: getSize(
                              24.00,
                            ),
                            margin: getMargin(
                              right: 14,
                            ),
                            onTap: () => eventItemModelObj.isFav.value =
                                !eventItemModelObj.isFav.value,
                          );
                        }),
                      ],
                    ),
                    Container(
                      width: getHorizontalSize(
                        166.00,
                      ),
                      margin: getMargin(
                        top: 10,
                      ),
                      child: Text(
                        "msg_asian_ice_skate".tr,
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
                          Text(
                            "msg_jakarta_convention".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOutfitLight12,
                          ),
                          Text(
                            "lbl_102".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOutfitRegular12,
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
      ),
    );
  }
}
