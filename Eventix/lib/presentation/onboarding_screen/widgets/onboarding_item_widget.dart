import '../controller/onboarding_controller.dart';
import '../models/onboarding_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore: must_be_immutable
class OnboardingItemWidget extends StatelessWidget {
  OnboardingItemWidget(this.onboardingItemModelObj);

  OnboardingItemModel onboardingItemModelObj;

  var controller = Get.find<OnboardingController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: ImageConstant.imgUnsplashgioh4gho0g,
        height: getVerticalSize(
          143.00,
        ),
        width: getHorizontalSize(
          157.00,
        ),
        radius: BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        ),
      ),
    );
  }
}
