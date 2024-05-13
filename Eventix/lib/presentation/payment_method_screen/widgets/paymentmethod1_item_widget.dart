import '../controller/payment_method_controller.dart';
import '../models/paymentmethod1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Paymentmethod1ItemWidget extends StatelessWidget {
  Paymentmethod1ItemWidget(this.paymentmethod1ItemModelObj);

  Paymentmethod1ItemModel paymentmethod1ItemModelObj;

  var controller = Get.find<PaymentMethodController>();

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
          all: 16,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 52,
              width: 52,
              variant: IconButtonVariant.FillGray100,
              padding: IconButtonPadding.PaddingAll16,
              child: CustomImageView(
                svgPath: ImageConstant.imgComputer48x48,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                bottom: 1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "SAB Bank".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtOutfitMedium18Gray900,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 8,
                    ),
                    child: Text(
                      "lbl_5631".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOutfitLight16,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              svgPath: ImageConstant.imgEdit,
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              margin: getMargin(
                top: 14,
                bottom: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
