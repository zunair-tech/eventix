import '../../favorite_events_page/models/favoriteevents_item_model.dart';
import '../controller/nearby_events_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore: must_be_immutable
class EventsItemWidget extends StatelessWidget {
  EventsItemWidget(this.eventsItemModelObj);

  FavoriteeventsItemModel eventsItemModelObj;

  var controller = Get.find<NearbyEventsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: getMargin(
          top: 8.0,
          bottom: 8.0,
        ),
        padding: getPadding(
          top: 12,
          bottom: 12,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomImageView(
              imagePath: eventsItemModelObj.img,
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
            Expanded(
              child: Padding(
                padding: getPadding(
                  left: 14,
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
                            "msg_dec_22_31_11am_5pm".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOutfitLight10Gray400,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgFavorite,
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
                    Text(
                      eventsItemModelObj.name,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOutfitMedium16Gray900,
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
                              "msg_jogja_expo_center".tr,
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
                              "lbl_free".tr,
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
            ),
          ],
        ),
      ),
    );
  }
}
