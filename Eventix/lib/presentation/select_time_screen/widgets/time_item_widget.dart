import '../controller/select_time_controller.dart';
import '../models/time_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore: must_be_immutable
class TimeItemWidget extends StatelessWidget {
  TimeItemWidget(this.timeItemModelObj, {required this.index});

  TimeItemModel timeItemModelObj;
  int index;

  var controller = Get.find<SelectTimeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Obx(() {
        return InkWell(
          onTap: () => controller.selectedTime.value = index,
          child: Container(
            margin: getMargin(
              top: 8.0,
              bottom: 8.0,
            ),
            padding: getPadding(
              all: 16,
            ),
            decoration: controller.selectedTime.value == index
                ? AppDecoration.fillBlue100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  )
                : AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
            child: Row(
              children: [
                controller.selectedTime.value == index
                    ? Icon(
                        Icons.radio_button_checked,
                        color: ColorConstant.indigo600,
                      )
                    : Icon(
                        Icons.radio_button_off_rounded,
                        color: ColorConstant.black900,
                      ),
                Padding(
                  padding: getPadding(
                    left: 5,
                    top: 1,
                    right: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Monday".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitMedium18Gray900,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 8,
                        ),
                        child: Text(
                          "Dec 22 2024, 7-11pm".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOutfitLight16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
          ),
        );
      }),
    );
  }
}
