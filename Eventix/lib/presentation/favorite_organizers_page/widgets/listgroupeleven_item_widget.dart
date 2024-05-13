import '../controller/favorite_organizers_controller.dart';
import '../models/listgroupeleven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListgroupelevenItemWidget extends StatelessWidget {
  ListgroupelevenItemWidget(this.listgroupelevenItemModelObj);

  ListgroupelevenItemModel listgroupelevenItemModelObj;

  var controller = Get.find<FavoriteOrganizersController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Get.toNamed(AppRoutes.organizerProfileAboutTabContainerScreen),
      child: Container(
        margin: getMargin(
          top: 8.0,
          bottom: 8.0,
        ),
        padding: getPadding(
          top: 16,
          bottom: 16,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: ColorConstant.teal300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Container(
                height: getVerticalSize(
                  124.00,
                ),
                width: getHorizontalSize(
                  112.00,
                ),
                padding: getPadding(
                  left: 31,
                  top: 37,
                  right: 31,
                  bottom: 37,
                ),
                decoration: AppDecoration.fillTeal300.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Stack(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgGroup11,
                      height: getSize(
                        49.00,
                      ),
                      width: getSize(
                        49.00,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "msg_korea_id_tourism".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtOutfitMedium16Gray900,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 13,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgLocation16x16,
                          height: getSize(
                            16.00,
                          ),
                          width: getSize(
                            16.00,
                          ),
                          margin: getMargin(
                            top: 1,
                            bottom: 3,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                          ),
                          child: Text(
                            "msg_jakarta_indonesia".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOutfitLight16Gray400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgBookmark16x16,
                          height: getSize(
                            16.00,
                          ),
                          width: getSize(
                            16.00,
                          ),
                          margin: getMargin(
                            top: 1,
                            bottom: 3,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 8,
                          ),
                          child: Text(
                            "lbl_143_events".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOutfitLight16Gray400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      167.00,
                    ),
                    margin: getMargin(
                      top: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          height: 32,
                          width: 127,
                          text: "lbl_following".tr,
                          variant: ButtonVariant.FillGray100,
                          shape: ButtonShape.CircleBorder16,
                          padding: ButtonPadding.PaddingAll5,
                          fontStyle: ButtonFontStyle.OutfitMedium16Gray400,
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgUser1,
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                          margin: getMargin(
                            top: 4,
                            bottom: 4,
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
