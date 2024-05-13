import 'package:Eventix/widgets/bg_img.dart';
import 'package:Eventix/widgets/bk_btn.dart';

import '../select_ticket_type_screen/widgets/tickettype_item_widget.dart';
import 'controller/select_ticket_type_controller.dart';
import 'models/tickettype_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';

class SelectTicketTypeScreen extends GetWidget<SelectTicketTypeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Stack(alignment: Alignment.topRight, children: [
              BgImage(),
              Column(
                children: [
                  Padding(
                      padding: getPadding(right: 24, top: 30),
                      child: Row(
                        children: [
                          BkBtn(),
                          Text("msg_select_ticket_type".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitMedium18Gray900),
                        ],
                      )),
                  Obx(() => ListView.builder(
                      padding:
                          getPadding(left: 24, top: 40, right: 24, bottom: 20),
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.selectTicketTypeModelObj.value
                          .tickettypeItemList.length,
                      itemBuilder: (context, index) {
                        TickettypeItemModel model = controller
                            .selectTicketTypeModelObj
                            .value
                            .tickettypeItemList[index];
                        return TickettypeItemWidget(model, index: index);
                      })),
                ],
              )
            ]),
            bottomNavigationBar: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                    padding: getPadding(
                      left: 24,
                      top: 10,
                      right: 24,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                              padding: getPadding(top: 1),
                              child: Text("lbl_total".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOutfitLight16)),
                          Text("SAR70".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitMedium18Gray900)
                        ])),
                Padding(
                    padding:
                        getPadding(left: 24, right: 24, bottom: 20, top: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                            height: 56,
                            width: 327,
                            text: "lbl_next".tr,
                            onTap: () => Get.toNamed(AppRoutes.checkoutScreen),
                          )
                        ])),
              ],
            )));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
