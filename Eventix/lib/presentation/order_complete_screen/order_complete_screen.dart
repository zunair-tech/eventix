import 'controller/order_complete_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';

class OrderCompleteScreen extends GetWidget<OrderCompleteController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray5002,
        body: Stack(
          children: [
            Align(
              alignment: Alignment(0, -.6),
              child: CustomImageView(
                imagePath: ImageConstant.bgImage,
                height: 161,
                width: size.width,
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment(0, -.6),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                  bottom: 57,
                ),
                color: ColorConstant.whiteA700,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder32,
                ),
                child: Container(
                  height: getSize(
                    112.00,
                  ),
                  width: getSize(
                    112.00,
                  ),
                  padding: getPadding(
                    all: 24,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder32,
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        svgPath: ImageConstant.imgVolume,
                        height: getSize(
                          64.00,
                        ),
                        width: getSize(
                          64.00,
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width,
                height: size.height * .55,
                padding: getPadding(
                  left: 24,
                  top: 40,
                  right: 24,
                  bottom: 20,
                ),
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        274.00,
                      ),
                      child: Text(
                        "msg_your_ticket_purchase".tr,
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtOutfitSemiBold24,
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        top: 27,
                      ),
                      child: Text(
                        "Your order has been successfully placed! You will receive a confirmation email with your order details shortly. Thank you for shopping with us!".tr,
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtOutfitLight16,
                      ),
                    ),
                    CustomButton(
                      height: 56,
                      width: 327,
                      text: "lbl_my_ticket".tr,
                      margin: getMargin(
                        top: 128,
                      ),
                      onTap: () => Get.toNamed(AppRoutes.ticketDetailScreen),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
