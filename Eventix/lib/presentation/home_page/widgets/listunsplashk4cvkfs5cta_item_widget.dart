// import '../controller/home_controller.dart';
// import '../models/listcountry_one_item_model.dart';
// import 'package:flutter/material.dart';
// import 'package:Eventix/core/app_export.dart';

// // ignore: must_be_immutable
// class Listunsplashk4cvkfs5ctaItemWidget extends StatelessWidget {
//   Listunsplashk4cvkfs5ctaItemWidget(this.listunsplashk4cvkfs5ctaItemModelObj);

//   ListcountryOneItemModel listunsplashk4cvkfs5ctaItemModelObj;

//   var controller = Get.find<HomeController>();

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () => Get.toNamed(AppRoutes.eventDetailsScreen),
//       child: Container(
//         margin: getMargin(
//           top: 6.0,
//           bottom: 8.0,
//         ),
//         padding: getPadding(top: 12, bottom: 12, left: 14),
//         decoration: AppDecoration.fillWhiteA700.copyWith(
//           borderRadius: BorderRadiusStyle.roundedBorder16,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             CustomImageView(
//               imagePath: listunsplashk4cvkfs5ctaItemModelObj.img,
//               height: getVerticalSize(
//                 100.00,
//               ),
//               width: getHorizontalSize(
//                 103.00,
//               ),
//               radius: BorderRadius.circular(
//                 getHorizontalSize(
//                   8.00,
//                 ),
//               ),
//               margin: getMargin(
//                 top: 3,
//                 bottom: 3,
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: getPadding(
//                   left: 14,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             CustomImageView(
//                               svgPath: ImageConstant.imgFolder,
//                               height: getSize(
//                                 12.00,
//                               ),
//                               width: getSize(
//                                 12.00,
//                               ),
//                               margin: getMargin(
//                                 top: 6,
//                                 bottom: 6,
//                               ),
//                             ),
//                             Padding(
//                               padding: getPadding(
//                                 left: 4,
//                                 top: 6,
//                                 bottom: 4,
//                               ),
//                               child: Text(
//                                 listunsplashk4cvkfs5ctaItemModelObj.name,
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtOutfitLight10Gray400,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Obx(() {
//                           return CustomImageView(
//                             svgPath:
//                                 listunsplashk4cvkfs5ctaItemModelObj.isFav.value
//                                     ? ImageConstant.favbold
//                                     : ImageConstant.imgFavorite,
//                             height: getSize(
//                               24.00,
//                             ),
//                             width: getSize(
//                               24.00,
//                             ),
//                             margin: getMargin(
//                               right: 12,
//                             ),
//                             onTap: () => listunsplashk4cvkfs5ctaItemModelObj
//                                     .isFav.value =
//                                 !listunsplashk4cvkfs5ctaItemModelObj
//                                     .isFav.value,
//                           );
//                         }),
//                       ],
//                     ),
//                     Container(
//                       width: getHorizontalSize(
//                         165.00,
//                       ),
//                       margin: getMargin(top: 9, left: 0),
//                       child: Text(
//                         listunsplashk4cvkfs5ctaItemModelObj.name,
//                         maxLines: null,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtOutfitMedium16Gray900,
//                       ),
//                     ),
//                     Container(
//                       width: getHorizontalSize(
//                         176.00,
//                       ),
//                       margin: getMargin(
//                         top: 0,
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: getPadding(
//                               top: 1,
//                             ),
//                             child: Text(
//                               "Boulevard Riyadh".tr,
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: AppStyle.txtOutfitLight12,
//                             ),
//                           ),
//                           Padding(
//                             padding: getPadding(
//                               bottom: 1,
//                             ),
//                             child: Text(
//                               "SAR75".tr,
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: AppStyle.txtOutfitRegular12,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import '../controller/home_controller.dart';
import '../models/listcountry_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'dart:io';

// ignore: must_be_immutable
class Listunsplashk4cvkfs5ctaItemWidget extends StatelessWidget {
  Listunsplashk4cvkfs5ctaItemWidget(this.listunsplashk4cvkfs5ctaItemModelObj);

  ListcountryOneItemModel listunsplashk4cvkfs5ctaItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(AppRoutes.eventDetailsScreen),
      child: Container(
        margin: getMargin(
          top: 6.0,
          bottom: 8.0,
        ),
        padding: getPadding(top: 12, bottom: 12, left: 14),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            listunsplashk4cvkfs5ctaItemModelObj.img.isNotEmpty
                ? Image.file(
                    File(listunsplashk4cvkfs5ctaItemModelObj.img),
                    height: getVerticalSize(100.00),
                    width: getHorizontalSize(103.00),
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color:
                            Colors.grey, // Placeholder if image not available
                        height: getVerticalSize(100.00),
                        width: getHorizontalSize(103.00),
                      );
                    },
                  )
                : Container(
                    color: Colors.grey, // Placeholder if image not available
                    height: getVerticalSize(100.00),
                    width: getHorizontalSize(103.00),
                  ),
            Expanded(
              child: Padding(
                padding: getPadding(left: 14),
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
                              height: getSize(12.00),
                              width: getSize(12.00),
                              margin: getMargin(top: 6, bottom: 6),
                            ),
                            Padding(
                              padding: getPadding(left: 4, top: 6, bottom: 4),
                              child: Text(
                                listunsplashk4cvkfs5ctaItemModelObj.name,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtOutfitLight10Gray400,
                              ),
                            ),
                          ],
                        ),
                        Obx(() {
                          return CustomImageView(
                            svgPath:
                                listunsplashk4cvkfs5ctaItemModelObj.isFav.value
                                    ? ImageConstant.favbold
                                    : ImageConstant.imgFavorite,
                            height: getSize(24.00),
                            width: getSize(24.00),
                            margin: getMargin(right: 12),
                            onTap: () => listunsplashk4cvkfs5ctaItemModelObj
                                    .isFav.value =
                                !listunsplashk4cvkfs5ctaItemModelObj
                                    .isFav.value,
                          );
                        }),
                      ],
                    ),
                    Container(
                      width: getHorizontalSize(165.00),
                      margin: getMargin(top: 9, left: 0),
                      child: Text(
                        listunsplashk4cvkfs5ctaItemModelObj.name,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitMedium16Gray900,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(176.00),
                      margin: getMargin(top: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: getPadding(top: 1),
                            child: Text(
                              "Boulevard Riyadh".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitLight12,
                            ),
                          ),
                          Padding(
                            padding: getPadding(bottom: 1),
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
            ),
          ],
        ),
      ),
    );
  }
}
