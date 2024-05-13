import '../controller/payment_method_one_controller.dart';
import '../models/paymentmethod_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore: must_be_immutable
class PaymentmethodItemWidget extends StatelessWidget {
  PaymentmethodItemWidget(this.paymentmethodItemModelObj,
      {required this.index});
  int index;
  PaymentmethodItemModel paymentmethodItemModelObj;

  var controller = Get.find<PaymentMethodOneController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return InkWell(
        onTap: () => controller.selectedPaymentMethod.value = index,
        child: Container(
          margin: getMargin(
            top: 8.0,
            bottom: 8.0,
          ),
          padding: getPadding(
            all: 16,
          ),
          decoration: controller.selectedPaymentMethod.value == index
              ? AppDecoration.fillBlue100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                )
              : AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
          child: Row(
            children: [
              controller.selectedPaymentMethod.value == index
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
                  left: 16,
                  right: 154,
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
                      style: AppStyle.txtOutfitMedium18,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 8,
                      ),
                      child: Text(
                        "lbl_5631".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtOutfitLight16Gray900,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
