import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_icon_button.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: ColorConstant.indigo600,
          body: Align(
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomIconButton(
                        height: 64,
                        width: 64,
                        variant: IconButtonVariant.FillIndigo600,
                        shape: IconButtonShape.RoundedBorder21,
                        child: CustomImageView(imagePath: ImageConstant.logoo)),
                    Padding(
                        padding: getPadding(left: 21, top: 6, bottom: 3),
                        child: Text("Eventix".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOutfitSemiBold4267))
                  ])),
        ));
  }
}
