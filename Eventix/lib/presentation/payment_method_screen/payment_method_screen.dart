import 'package:Eventix/widgets/bg_img.dart';
import 'package:Eventix/widgets/bk_btn.dart';

import '../payment_method_screen/widgets/paymentmethod1_item_widget.dart';
import 'controller/payment_method_controller.dart';
import 'models/paymentmethod1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_icon_button.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Stack(children: [
              BgImage(),
              Column(
                children: [
                  Padding(
                      padding: getPadding(left: 4, right: 24, top: 30),
                      child: Row(
                        children: [
                          BkBtn(),
                          Text("lbl_payment_method".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitMedium18Gray900),
                        ],
                      )),
                  Expanded(
                    child: Obx(() => ListView.builder(
                        padding: getPadding(
                          left: 24,
                          right: 24,
                        ),
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.paymentMethodModelObj.value
                            .paymentmethod1ItemList.length,
                        itemBuilder: (context, index) {
                          Paymentmethod1ItemModel model = controller
                              .paymentMethodModelObj
                              .value
                              .paymentmethod1ItemList[index];
                          return Paymentmethod1ItemWidget(model);
                        })),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: size.width,
                          padding: getPadding(
                              left: 24, top: 20, right: 24, bottom: 20),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(6.00),
                                        width: getHorizontalSize(72.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray100))),
                                Padding(
                                    padding: getPadding(top: 6),
                                    child: Text("lbl_new_method".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOutfitMedium18Gray900)),
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: InkWell(
                                      onTap: () => Get.toNamed(
                                          AppRoutes.newPaymentMethodScreen),
                                      child: Row(children: [
                                        CustomIconButton(
                                            height: 32,
                                            width: 32,
                                            variant:
                                                IconButtonVariant.FillGray100,
                                            padding:
                                                IconButtonPadding.PaddingAll8,
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgComputer48x48)),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 5, bottom: 5),
                                            child: Text("lbl_new_card".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitRegular16)),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightGray900,
                                            rotateifRtl: true,
                                            height: getSize(24.00),
                                            width: getSize(24.00),
                                            margin:
                                                getMargin(top: 4, bottom: 4))
                                      ]),
                                    )),
                                Padding(
                                    padding: getPadding(top: 20),
                                    child: Row(children: [
                                      CustomIconButton(
                                          height: 32,
                                          width: 32,
                                          variant:
                                              IconButtonVariant.FillGray100,
                                          padding:
                                              IconButtonPadding.PaddingAll8,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage5)),
                                      Padding(
                                          padding: getPadding(
                                              left: 12, top: 6, bottom: 4),
                                          child: Text("lbl_google_pay".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtOutfitRegular16)),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowrightGray900,
                                          rotateifRtl: true,
                                          height: getSize(24.00),
                                          width: getSize(24.00),
                                          margin: getMargin(top: 4, bottom: 4))
                                    ])),
                                Padding(
                                    padding: getPadding(top: 20),
                                    child: Row(children: [
                                      CustomIconButton(
                                          height: 32,
                                          width: 32,
                                          variant:
                                              IconButtonVariant.FillGray900,
                                          padding:
                                              IconButtonPadding.PaddingAll8,
                                          child: CustomImageView(
                                              svgPath: ImageConstant.imgFrame)),
                                      Padding(
                                          padding: getPadding(
                                              left: 12, top: 6, bottom: 4),
                                          child: Text("lbl_apple_pay".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtOutfitRegular16)),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowrightGray900,
                                          rotateifRtl: true,
                                          height: getSize(24.00),
                                          width: getSize(24.00),
                                          margin: getMargin(top: 4, bottom: 4))
                                    ])),
                              
                              ]))),
                ],
              )
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
