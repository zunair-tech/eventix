import 'package:Eventix/widgets/bk_btn.dart';

import '../payment_method_one_screen/widgets/paymentmethod_item_widget.dart';
import 'controller/payment_method_one_controller.dart';
import 'models/paymentmethod_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

class PaymentMethodOneScreen extends GetWidget<PaymentMethodOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Stack(children: [
              Column(
                children: [
                  Padding(
                      padding: getPadding(left: 4, top: 21),
                      child: Row(
                        children: [
                          BkBtn(),
                          Text("lbl_payment_method".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitMedium18Gray900),
                        ],
                      )),
                  Obx(() => ListView.builder(
                      padding: getPadding(
                        left: 24,
                        top: 40,
                        right: 24,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.paymentMethodOneModelObj.value
                          .paymentmethodItemList.length,
                      itemBuilder: (context, index) {
                        PaymentmethodItemModel model = controller
                            .paymentMethodOneModelObj
                            .value
                            .paymentmethodItemList[index];
                        return PaymentmethodItemWidget(
                          model,
                          index: index,
                        );
                      })),
                ],
              )
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
