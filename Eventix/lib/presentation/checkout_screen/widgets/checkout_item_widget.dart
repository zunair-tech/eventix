import '../controller/checkout_controller.dart';
import '../models/checkout_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore: must_be_immutable
class CheckoutItemWidget extends StatelessWidget {
  CheckoutItemWidget(this.checkoutItemModelObj);

  CheckoutItemModel checkoutItemModelObj;

  var controller = Get.find<CheckoutController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 6.2450085,
        bottom: 6.2450085,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Text(
              "lbl_regular".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtOutfitRegular16,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 8,
              bottom: 1,
            ),
            child: Text(
              "lbl_102".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtOutfitRegular16Blue200,
            ),
          ),
          Spacer(),
          Padding(
            padding: getPadding(
              bottom: 1,
            ),
            child: Text(
              "lbl_x_2".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtOutfitRegular16Gray400,
            ),
          ),
        ],
      ),
    );
  }
}
