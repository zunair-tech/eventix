import 'controller/apply_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';
import 'package:Eventix/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ApplyCodeBottomsheet extends StatelessWidget {
  ApplyCodeBottomsheet(this.controller);

  ApplyCodeController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: size.width,
        padding: getPadding(
          left: 24,
          top: 31,
          right: 24,
          bottom: 31,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "msg_have_a_voucher_code".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtOutfitSemiBold24,
            ),
            CustomTextFormField(
              width: 327,
              focusNode: FocusNode(),
              controller: controller.inputFieldController,
              hintText: "Dr.Omar".tr,
              margin: getMargin(
                top: 32,
              ),
              padding: TextFormFieldPadding.PaddingT11_1,
              textInputAction: TextInputAction.done,
              suffix: Container(
                margin: getMargin(
                  left: 30,
                  top: 12,
                  right: 24,
                  bottom: 12,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgClose,
                ),
              ),
              suffixConstraints: BoxConstraints(
                minWidth: getHorizontalSize(
                  24.00,
                ),
                minHeight: getVerticalSize(
                  24.00,
                ),
              ),
            ),
            CustomButton(
              height: 37,
              width: 230,
              text: "msg_new_year_promo_up".tr,
              margin: getMargin(
                top: 16,
              ),
              variant: ButtonVariant.FillTeal300,
              shape: ButtonShape.CircleBorder16,
              padding: ButtonPadding.PaddingT7,
              fontStyle: ButtonFontStyle.OutfitLight14,
              prefixWidget: Container(
                margin: getMargin(
                  right: 10,
                ),
                child: CustomImageView(
                  svgPath: ImageConstant.imgTicket16x16,
                ),
              ),
            ),
            CustomButton(
              height: 56,
              width: 327,
              text: "lbl_apply_code".tr,
              margin: getMargin(
                top: 32,
                bottom: 8,
              ),
              onTap: () => Get.toNamed(AppRoutes.orderCompleteScreen),
            ),
          ],
        ),
      ),
    );
  }
}
