import 'package:Eventix/widgets/spacing.dart';

import 'controller/filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';
import 'package:Eventix/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class FilterBottomsheet extends StatelessWidget {
  FilterBottomsheet(this.controller);

  FilterController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        padding: getPadding(
          all: 24,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "lbl_filter".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOutfitMedium18Gray900,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 25,
              ),
              child: Obx(() {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => controller.isFreeSelected.value = true,
                      child: Row(
                        children: [
                          controller.isFreeSelected.value
                              ? Icon(
                                  Icons.radio_button_off_rounded,
                                  color: Colors.black,
                                  size: 20,
                                )
                              : Icon(
                                  Icons.radio_button_checked_rounded,
                                  size: 20,
                                  color: ColorConstant.teal300,
                                ),
                          Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Text(
                              "lbl_free2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitLight18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    HorizontalSpace(width: 20),
                    InkWell(
                      onTap: () => controller.isFreeSelected.value = false,
                      child: Row(
                        children: [
                          controller.isFreeSelected.value == false
                              ? Icon(
                                  Icons.radio_button_off_rounded,
                                  size: 20,
                                  color: Colors.black,
                                )
                              : Icon(
                                  Icons.radio_button_checked_rounded,
                                  color: ColorConstant.teal300,
                                  size: 20,
                                ),
                          Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Text(
                              "lbl_paid".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitLight18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
            VerticalSpace(height: 24),
            Obx(() {
              return SliderTheme(
                data: SliderThemeData(
                  trackShape: RoundedRectSliderTrackShape(),
                  trackHeight: 1,
                  valueIndicatorTextStyle: TextStyle(color: Color(0xFF549FCC)),
                  valueIndicatorColor: Colors.white,
                  activeTrackColor: Color(0xFF549FCC),
                  inactiveTrackColor: ColorConstant.gray100,
                  thumbColor: Color(0xFF549FCC),
                  thumbShape: RoundSliderThumbShape(
                    elevation: 0,
                  ),
                ),
                child: RangeSlider(
                  labels: RangeLabels(
                    Constants.currency +
                        controller.sliderRange.value.start.toStringAsFixed(2),
                    Constants.currency +
                        controller.sliderRange.value.end
                            .round()
                            .toStringAsFixed(2),
                  ),
                  values: controller.sliderRange.value,
                  divisions: 100,
                  min: 0,
                  max: 100,
                  onChanged: (value) {
                    controller.onSliderChange(value);
                  },
                ),
              );
            }),
            Padding(
              padding: getPadding(
                left: 1,
                top: 28,
              ),
              child: Text(
                "Category",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOutfitLight18,
              ),
            ),
            Container(
              height: getVerticalSize(40),
              margin: getMargin(top: 10),
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.categoryItemList.length,
                separatorBuilder: (context, index) => HorizontalSpace(width: 8),
                itemBuilder: (context, index) => Obx(() {
                  return InkWell(
                    onTap: () => controller
                            .categoryItemList[index].isSelected.value =
                        !controller.categoryItemList[index].isSelected.value,
                    child: Container(
                      padding:
                          getPadding(left: 16, right: 16, top: 8, bottom: 8),
                      decoration: controller
                              .categoryItemList[index].isSelected.value
                          ? AppDecoration.fillGray5002.copyWith(
                              border: Border.all(color: ColorConstant.teal300),
                              borderRadius: BorderRadius.circular(8))
                          : AppDecoration.fillGray5002
                              .copyWith(borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        children: [
                          Text(
                            controller.categoryItemList[index].img,
                          ),
                          HorizontalSpace(width: 8),
                          Text(
                            controller.categoryItemList[index].title,
                            style: AppStyle.txtOutfitLight16Gray900,
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 1,
                top: 28,
              ),
              child: Text(
                "lbl_date".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOutfitLight18,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    height: 48,
                    width: 155,
                    text: controller.selectedDate1.value == DateTime.now()
                        ? "lbl_m_d_y".tr
                        : "${controller.selectedDate1.value.toLocal()}"
                            .split(' ')[0],
                    variant: ButtonVariant.OutlineGray200,
                    shape: ButtonShape.CircleBorder24,
                    padding: ButtonPadding.PaddingT11,
                    fontStyle: controller.selectedDate1.value == DateTime.now()
                        ? ButtonFontStyle.OutfitLight14Gray600
                        : ButtonFontStyle.OutfitLight18,
                    suffixWidget: Container(
                      margin: getMargin(
                        left: 18,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCalendar24x24,
                      ),
                    ),
                    onTap: () => controller.selectDate(
                        context, controller.selectedDate1),
                  ),
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      8.00,
                    ),
                    margin: getMargin(
                      top: 24,
                      bottom: 23,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray400,
                    ),
                  ),
                  CustomButton(
                    height: 48,
                    width: 155,
                    text: controller.selectedDate2.value == DateTime.now()
                        ? "lbl_m_d_y".tr
                        : "${controller.selectedDate2.value.toLocal()}"
                            .split(' ')[0],
                    variant: ButtonVariant.OutlineGray200,
                    shape: ButtonShape.CircleBorder24,
                    padding: ButtonPadding.PaddingT11,
                    fontStyle: controller.selectedDate2.value == DateTime.now()
                        ? ButtonFontStyle.OutfitLight14Gray600
                        : ButtonFontStyle.OutfitLight18,
                    suffixWidget: Container(
                      margin: getMargin(
                        left: 18,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgCalendar24x24,
                      ),
                    ),
                    onTap: () => controller.selectDate(
                        context, controller.selectedDate2),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 1,
                top: 32,
              ),
              child: Text(
                "lbl_location".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtOutfitLight18,
              ),
            ),
            CustomDropDown(
              width: 327,
              focusNode: FocusNode(),
              icon: Container(
                margin: getMargin(
                  left: 30,
                  right: 24,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgArrowdown,
                ),
              ),
              value: controller.filterModelObj.value.dropdownItemList[0],
              hintText: "lbl_city".tr,
              margin: getMargin(
                top: 8,
              ),
              items: controller.filterModelObj.value.dropdownItemList,
              onChanged: (value) {
                controller.onSelected(value);
              },
            ),
            CustomButton(
              height: 56,
              width: 327,
              text: "lbl_apply_filter".tr,
              margin: getMargin(
                top: 44,
                bottom: 15,
              ),
              onTap: () => Get.back(),
            ),
          ],
        ),
      ),
    );
  }
}
