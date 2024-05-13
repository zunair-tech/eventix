import 'package:Eventix/presentation/follow_organizer_screen/widgets/organizer_item_widget.dart';
import 'package:Eventix/widgets/bg_img.dart';

import 'controller/follow_organizer_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';

import 'models/follow_organizer_model.dart';

class FollowOrganizerScreen extends GetWidget<FollowOrganizerController> {
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
                child: ListView.builder(
                  padding: getPadding(
                    left: 22,
                    right: 22,
                    bottom: 100,
                  ),
                  itemBuilder: (_, index) {
                    FollowOrganizerModel model = controller
                        .favoriteEventModelObj.value.categoryItemList[index];
                    return OrganizerItemWidget(
                      model,
                    );
                  },
                  itemCount: 0,
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
                    onTap: () =>
                        Get.toNamed(AppRoutes.loadingPersonalizationScreen),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 40,
                ),
                child: Text(
                  "TEST",
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
