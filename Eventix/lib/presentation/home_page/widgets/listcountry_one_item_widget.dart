import '../controller/home_controller.dart';
import '../models/listcountry_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore: must_be_immutable
class ListcountryOneItemWidget extends StatelessWidget {
  ListcountryOneItemWidget(this.listcountryOneItemModelObj);

  ListcountryOneItemModel listcountryOneItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: InkWell(
        onTap: () => Get.toNamed(AppRoutes.eventDetailsScreen),
        child: Container(
          width: getHorizontalSize(
            224.00,
          ),
          margin: getMargin(
            right: 12,
          ),
          padding: getPadding(
            left: 12,
            top: 10,
            right: 12,
            bottom: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder12,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.MDL, 
              ),
              fit: BoxFit.cover,
            ),
          ),
          // foregroundDecoration:
          //     AppDecoration.gradientBlack90000Black900.copyWith(
          //   borderRadius: BorderRadiusStyle.roundedBorder12,
          // ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: getPadding(
                  top: 71,
                ),
                child: Text(
                  listcountryOneItemModelObj.name,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOutfitMedium16,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgCalendar12x12,
                      height: getSize(
                        12.00,
                      ),
                      width: getSize(
                        12.00,
                      ),
                      margin: getMargin(
                        top: 2,
                        bottom: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                        top: 2,
                      ),
                      child: Text(
                        "lbl_dec_22".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitLight10,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgLocation12x12,
                      height: getSize(
                        12.00,
                      ),
                      width: getSize(
                        12.00,
                      ),
                      margin: getMargin(
                        left: 12,
                        top: 2,
                        bottom: 2,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 4,
                        top: 2,
                      ),
                      child: Text(
                        "Riyadh".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitLight10,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        38.00,
                      ),
                      margin: getMargin(
                        left: 52,
                      ),
                      padding: getPadding(
                        left: 8,
                        top: 1,
                        right: 8,
                        bottom: 1,
                      ),
                      decoration: AppDecoration.txtFillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder8,
                      ),
                      child: Text(
                        "SAR35".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitSemiBold10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
