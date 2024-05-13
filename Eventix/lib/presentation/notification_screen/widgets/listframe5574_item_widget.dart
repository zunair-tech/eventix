import '../controller/notification_controller.dart';
import '../models/listframe5574_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listframe5574ItemWidget extends StatelessWidget {
  Listframe5574ItemWidget(this.listframe5574ItemModelObj);

  Listframe5574ItemModel listframe5574ItemModelObj;

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
            variant: IconButtonVariant.FillTeal300,
            shape: IconButtonShape.RoundedBorder12,
            padding: IconButtonPadding.PaddingAll16,
            child: CustomImageView(
              svgPath: ImageConstant.imgGroup11,
            ),
          ),
          Container(
            width: getHorizontalSize(
              189.00,
            ),
            margin: getMargin(
              left: 16,
              top: 6,
              bottom: 5,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "HELL".tr,
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        16,
                      ),
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: "lbl_added_new_event".tr,
                    style: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        16,
                      ),
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 26,
              top: 19,
              bottom: 18,
            ),
            child: Text(
              "lbl_08_40".tr,
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
