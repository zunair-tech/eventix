import '../controller/select_ticket_type_controller.dart';
import '../models/tickettype_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore: must_be_immutable
class TickettypeItemWidget extends StatelessWidget {
  TickettypeItemWidget(this.tickettypeItemModelObj, {required this.index});

  TickettypeItemModel tickettypeItemModelObj;
  int index;

  var controller = Get.find<SelectTicketTypeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
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
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  top: 3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Regular".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOutfitMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 2,
                      ),
                      child: Text(
                        "SAR35".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitMedium16Teal300,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: Text(
                        "1,500 left".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitLight16Gray400,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      svgPath: ImageConstant.imgMenu1,
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                      margin: getMargin(
                        bottom: 1,
                      ),
                      onTap: () {
                        if (tickettypeItemModelObj.counter.value > 0)
                          tickettypeItemModelObj.counter.value--;
                      },
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                        right: 8,
                        bottom: 2,
                      ),
                      child: Obx(() {
                        return Container(
                          width: getHorizontalSize(24),
                          alignment: Alignment.center,
                          child: Text(
                            controller.selectTicketTypeModelObj.value
                                .tickettypeItemList[index].counter.value
                                .toString(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtOutfitLight16Gray400,
                          ),
                        );
                      }),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgPlus,
                      height: getSize(
                        24.00,
                      ),
                      width: getSize(
                        24.00,
                      ),
                      onTap: () {
                        tickettypeItemModelObj.counter.value++;
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
