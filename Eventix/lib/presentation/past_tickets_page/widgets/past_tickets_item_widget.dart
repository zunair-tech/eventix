import '../controller/past_tickets_controller.dart';
import '../models/past_tickets_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore: must_be_immutable
class PastTicketsItemWidget extends StatelessWidget {
  PastTicketsItemWidget(this.pastTicketsItemModelObj);

  PastTicketsItemModel pastTicketsItemModelObj;

  var controller = Get.find<PastTicketsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 1.4399872,
        bottom: 1.4399872,
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
    );
  }
}
