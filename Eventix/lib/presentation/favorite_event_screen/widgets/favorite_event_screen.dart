import 'package:Eventix/presentation/favorite_event_screen/widgets/controller/favorite_event_controller.dart';
import 'package:Eventix/presentation/favorite_event_screen/widgets/models/favorite_event_model.dart';
import 'package:Eventix/presentation/follow_organizer_screen/follow_organizer_screen.dart';
import 'package:Eventix/widgets/bg_img.dart';

import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';

import 'widgets/favorite_item_widget.dart';

//ignore: must_be_immutable
class FavoriteEventScreen extends GetWidget<FavoriteEventController> {
  var controller = Get.put(FavoriteEventController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray5002,
        body: Stack(
          alignment: Alignment.topRight,
          children: [
            Padding(padding: getPadding(top: 20), child: BgImage()),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: getPadding(
                  top: 100,
                ),
                child: GridView.builder(
                  padding: getPadding(
                    left: 22,
                    right: 22,
                    bottom: 100,
                  ),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: getVerticalSize(124),
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12),
                  itemBuilder: (_, index) {
                    FavoriteEventrModel model = controller
                        .favoriteEventModelObj.value.categoryItemList[index];
                    return FavoriteItemWidget(
                      model,
                    );
                  },
                  itemCount: controller
                      .favoriteEventModelObj.value.categoryItemList.length,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                child: Container(
                  width: size.width,
                  padding: getPadding(
                    left: 24,
                    top: 20,
                    right: 24,
                    bottom: 20,
                  ),
                  decoration: AppDecoration.gradientGray5000Gray5002,
                  child: CustomButton(
                    height: 56,
                    width: 327,
                    text: "lbl_next".tr,
                    onTap: () => Get.to(FollowOrganizerScreen()),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 60,
                ),
                child: Text(
                  "msg_choose_favorite".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOutfitMedium18Gray900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
