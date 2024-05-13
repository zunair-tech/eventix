import 'package:dotted_decoration/dotted_decoration.dart';

import '../controller/ticket_controller.dart';
import '../models/ticket_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:Eventix/core/app_export.dart';

// ignore: must_be_immutable
class TicketItemWidget extends StatelessWidget {
  TicketItemWidget(this.ticketItemModelObj);

  TicketItemModel ticketItemModelObj;

  var controller = Get.find<TicketController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () => Get.toNamed(AppRoutes.ticketDetailScreen),
        child: Container(
          width: getHorizontalSize(
            327.00,
          ),
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgCard,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  top: 1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.asser,
                      height: getSize(
                        56.00,
                      ),
                      width: getSize(
                        56.00,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          8.00,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            227.00,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  124.00,
                                ),
                                child: Text(
                                  "Asser Alshoug Night".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOutfitMedium12,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                  bottom: 10,
                                ),
                                child: Text(
                                  "SAR700".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOutfitRegular12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                                  bottom: 3,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 4,
                                  top: 1,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "26 Nov".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOutfitLight10Gray400,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 38,
                                ),
                                child: Text(
                                  "Mohammed Abdu Arena".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOutfitLight12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  1.00,
                ),
                width: getHorizontalSize(
                  279.00,
                ),
                margin: getMargin(
                  top: 20,
                ),
                decoration: DottedDecoration(
                    color: ColorConstant.gray400,
                    shape: Shape.line,
                    linePosition: LinePosition.bottom),
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "lbl_ticket_type2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOutfitLight10Gray400,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 32,
                      ),
                      child: Text(
                        "lbl_no_of_tickets".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitLight10Gray400,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 116,
                      ),
                      child: Text(
                        "lbl_date".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitLight10Gray400,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "lbl_vvip".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOutfitRegular12Gray900,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 54,
                      ),
                      child: Text(
                        "lbl_x_1".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitRegular12Gray900,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 117,
                      ),
                      child: Text(
                        "Nov 26 2023".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitRegular12Gray900,
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
