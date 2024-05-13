import 'package:Eventix/widgets/bg_img.dart';
import 'package:Eventix/widgets/bk_btn.dart';

import '../favorite_events_page/models/favoriteevents_item_model.dart';
import '../nearby_events_screen/widgets/events_item_widget.dart';
import 'controller/nearby_events_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

class NearbyEventsScreen extends GetWidget<NearbyEventsController> {
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
                      padding: getPadding(left: 4, right: 24, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              BkBtn(),
                              Text("lbl_nearby_events".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOutfitMedium18Gray900),
                            ],
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgLocation24x24,
                            height: getSize(24.00),
                            width: getSize(24.00),
                            onTap: () => Get.toNamed(
                                AppRoutes.nearbyEventsMapViewScreen),
                          ),
                        ],
                      )),
                  Expanded(
                    child: Obx(() => ListView.builder(
                        padding: getPadding(left: 24, top: 40, right: 24),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller
                            .nearbyEventsModelObj.value.eventsItemList.length,
                        itemBuilder: (context, index) {
                          FavoriteeventsItemModel model = controller
                              .nearbyEventsModelObj.value.eventsItemList[index];
                          return EventsItemWidget(model);
                        })),
                  ),
                ],
              )
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
