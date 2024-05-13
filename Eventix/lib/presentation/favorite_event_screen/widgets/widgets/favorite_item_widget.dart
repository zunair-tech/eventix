import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

import '../controller/favorite_event_controller.dart';
import '../models/favorite_event_model.dart';

// ignore: must_be_immutable
class FavoriteItemWidget extends StatelessWidget {
  FavoriteItemWidget(this.categoryItemModelObj);

  FavoriteEventrModel categoryItemModelObj;

  var controller = Get.find<FavoriteEventController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return InkWell(
        onTap: () => categoryItemModelObj.isSelected.value =
            !categoryItemModelObj.isSelected.value,
        child: Container(
          padding: getPadding(
            all: 8,
          ),
          decoration: categoryItemModelObj.isSelected.value
              ? AppDecoration.outlineTeal300.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                )
              : AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  categoryItemModelObj.isSelected.value
                      ? CustomImageView(
                          svgPath: ImageConstant.imgClock,
                          height: getSize(
                            16.00,
                          ),
                          width: getSize(
                            16.00,
                          ),
                        )
                      : SizedBox(),
                ],
              ),
              Text(
                categoryItemModelObj.img,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOutfitMedium32,
              ),
              Padding(
                padding: getPadding(
                  top: 13,
                ),
                child: Text(
                  categoryItemModelObj.title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOutfitLight16Gray900,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
