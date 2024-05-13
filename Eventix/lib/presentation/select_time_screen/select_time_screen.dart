import 'package:Eventix/widgets/bg_img.dart';
import 'package:Eventix/widgets/bk_btn.dart';

import '../select_time_screen/widgets/time_item_widget.dart';
import 'controller/select_time_controller.dart';
import 'models/time_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';

class SelectTimeScreen extends GetWidget<SelectTimeController> {
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
                      padding: getPadding(left: 24, right: 24, top: 40),
                      child: Row(
                        children: [
                          BkBtn(),
                          Text("lbl_select_time".tr,
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
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller
                          .selectTimeModelObj.value.timeItemList.length,
                      itemBuilder: (context, index) {
                        TimeItemModel model = controller
                            .selectTimeModelObj.value.timeItemList[index];
                        return TimeItemWidget(model, index: index);
                      })),
                ],
              )
            ]),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 24, right: 24, bottom: 20),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(
                    height: 56,
                    width: 327,
                    text: "lbl_next".tr,
                    onTap: () => Get.toNamed(AppRoutes.selectTicketTypeScreen),
                  )
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
