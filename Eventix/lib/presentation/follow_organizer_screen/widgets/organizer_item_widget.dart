import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/spacing.dart';

import '../controller/follow_organizer_controller.dart';
import '../models/follow_organizer_model.dart';

// ignore: must_be_immutable
class OrganizerItemWidget extends StatelessWidget {
  OrganizerItemWidget(this.categoryItemModelObj);

  FollowOrganizerModel categoryItemModelObj;

  var controller = Get.find<FollowOrganizerController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        padding: getPadding(
          all: 16,
        ),
        decoration: categoryItemModelObj.isFollowed.value
            ? AppDecoration.outlineTeal300.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              )
            : AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.followOrganizer,
              height: 124,
              width: 112,
              fit: BoxFit.fill,
            ),
            HorizontalSpace(width: 16),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Arga Sport',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtOutfitMedium16Gray900,
                  ),
                  VerticalSpace(height: 10),
                  Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.location,
                        width: 24,
                        height: 24,
                        color: ColorConstant.gray600,
                      ),
                      HorizontalSpace(width: 10),
                      Text(
                        'Arga Sport',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitLight16Gray400,
                      ),
                    ],
                  ),
                  VerticalSpace(height: 4),
                  Row(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgStar,
                        width: 24,
                        height: 24,
                        color: ColorConstant.gray600,
                      ),
                      HorizontalSpace(width: 10),
                      Text(
                        '143 Events',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitLight16Gray400,
                      ),
                    ],
                  ),
                  VerticalSpace(height: 10),
                  categoryItemModelObj.isFollowed.value
                      ? Row(
                          children: [
                            Expanded(
                              child: Container(
                                alignment: Alignment.center,
                                padding: getPadding(all: 6),
                                margin: getMargin(right: 20),
                                width: getHorizontalSize(127),
                                decoration: AppDecoration.fillGray100.copyWith(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'Following',
                                  style: AppStyle.txtOutfitMedium16Gray400,
                                ),
                              ),
                            ),
                            HorizontalSpace(width: 14),
                            CustomImageView(
                              svgPath: ImageConstant.addFriend,
                              height: 30,
                              width: 30,
                            )
                          ],
                        )
                      : InkWell(
                          onTap: () =>
                              categoryItemModelObj.isFollowed.value = true,
                          child: Container(
                            alignment: Alignment.center,
                            padding: getPadding(all: 6),
                            margin: getMargin(right: 20),
                            width: size.width,
                            decoration: AppDecoration.fillBlue100.copyWith(
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              'Follow',
                              style: AppStyle.txtOutfitMedium16Teal300
                                  .copyWith(color: ColorConstant.teal900),
                            ),
                          ),
                        ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
