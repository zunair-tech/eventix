import '../controller/notification_controller.dart';
import '../models/listticket_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListticketItemWidget extends StatelessWidget {
  ListticketItemWidget(this.listticketItemModelObj);

  ListticketItemModel listticketItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 8.0,
        bottom: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 56,
            width: 56,
            shape: IconButtonShape.RoundedBorder12,
            padding: IconButtonPadding.PaddingAll16,
            child: CustomImageView(
              svgPath: ImageConstant.imgTicket56x56,
            ),
          ),
          Container(
            width: getHorizontalSize(
              177.00,
            ),
            margin: getMargin(
              left: 16,
              top: 15,
              bottom: 0,
            ),
            child: Text(
              "msg_the_3_events_you".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtOutfitLight16Gray900,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 45,
              top: 10,
              bottom: 18,
            ),
            child: Text(
              "lbl_12_10".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtOutfitRegular14Gray400,
            ),
          ),
        ],
      ),
    );
  }
}
