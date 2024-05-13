import '../controller/choose_method_controller.dart';
import '../models/choose_method_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore: must_be_immutable
class ChooseMethodItemWidget extends StatelessWidget {
  ChooseMethodItemWidget(this.chooseMethodItemModelObj);

  ChooseMethodItemModel chooseMethodItemModelObj;

  var controller = Get.find<ChooseMethodController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 8.0,
        bottom: 8.0,
      ),
      padding: getPadding(
        top: 16,
        bottom: 16,
      ),
      decoration: AppDecoration.outlineGray2001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgContrast,
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
          Padding(
            padding: getPadding(
              bottom: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_via_sms".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOutfitMedium18Gray900,
                ),
                Padding(
                  padding: getPadding(
                    top: 8,
                  ),
                  child: Text(
                    "msg_code_will_be_sent".tr,
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
    );
  }
}
