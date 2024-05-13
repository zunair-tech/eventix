import 'package:Eventix/widgets/bg_img.dart';
import 'package:Eventix/widgets/bk_btn.dart';
import 'package:Eventix/widgets/spacing.dart';

import '../notification_screen/widgets/listframe5574_item_widget.dart';
import '../notification_screen/widgets/listticket_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/listframe5574_item_model.dart';
import 'models/listticket_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

class NotificationScreen extends GetWidget<NotificationController> {
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
                      padding: getPadding(left: 4, right: 24, top: 35),
                      child: Row(
                        children: [
                          BkBtn(),
                          Text("lbl_notification".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOutfitMedium18Gray900),
                        ],
                      )),
                  VerticalSpace(height: 20),
                  Expanded(
                    child: Container(
                        width: size.width,
                        padding: getPadding(
                            left: 24, top: 35, right: 24, bottom: 35),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder24),
                        child: SingleChildScrollView(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_today2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOutfitMedium16Gray900),
                                Padding(
                                    padding: getPadding(top: 0),
                                    child: Obx(() => ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: controller
                                            .notificationModelObj
                                            .value
                                            .listframe5574ItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          Listframe5574ItemModel model =
                                              controller
                                                  .notificationModelObj
                                                  .value
                                                  .listframe5574ItemList[index];
                                          return Listframe5574ItemWidget(model);
                                        }))),
                                Padding(
                                    padding: getPadding(top: 33),
                                    child: Text("lbl_this_week".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOutfitMedium16Gray900)),
                                Padding(
                                    padding: getPadding(bottom: 8),
                                    child: Obx(() => ListView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: controller
                                            .notificationModelObj
                                            .value
                                            .listticketItemList
                                            .length,
                                        itemBuilder: (context, index) {
                                          ListticketItemModel model = controller
                                              .notificationModelObj
                                              .value
                                              .listticketItemList[index];
                                          return ListticketItemWidget(model);
                                        })))
                              ]),
                        )),
                  ),
                ],
              )
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
