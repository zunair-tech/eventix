import 'package:Eventix/widgets/bk_btn.dart';
import 'package:Eventix/widgets/spacing.dart';

import 'controller/contact_organizer_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_text_form_field.dart';

class ContactOrganizerScreen extends GetWidget<ContactOrganizerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Stack(alignment: Alignment.topLeft, children: [
              Column(
                children: [
                  Padding(
                      padding: getPadding(left: 4, top: 30),
                      child: Row(
                        children: [
                          BkBtn(),
                          Text("Contact US".tr,
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
                            left: 24, top: 13, right: 24, bottom: 13),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder24),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("lbl_today".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtOutfitRegular12Gray400)),
                              Expanded(child: Obx(() {
                                return ListView.builder(
                                  itemCount: controller.chatList.length,
                                  shrinkWrap: true,
                                  physics: BouncingScrollPhysics(),
                                  itemBuilder: (context, index) => controller
                                          .chatList[index].isMine
                                      ? Align(
                                          alignment:
                                              AlignmentDirectional.centerEnd,
                                          child: ConstrainedBox(
                                            constraints: BoxConstraints(
                                              maxWidth: size.width * .6,
                                            ),
                                            child: Container(
                                                margin: getMargin(top: 13),
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 13,
                                                    right: 12,
                                                    bottom: 13),
                                                decoration: AppDecoration
                                                    .fillTeal300
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL16),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          margin:
                                                              getMargin(top: 1),
                                                          child: Text(
                                                              controller
                                                                  .chatList[
                                                                      index]
                                                                  .msg,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtOutfitLight14WhiteA700))
                                                    ])),
                                          ),
                                        )
                                      : Align(
                                          alignment:
                                              AlignmentDirectional.centerStart,
                                          child: ConstrainedBox(
                                            constraints: BoxConstraints(
                                              maxWidth: size.width * .6,
                                            ),
                                            child: Container(
                                                margin: getMargin(top: 13),
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 13,
                                                    right: 12,
                                                    bottom: 13),
                                                decoration: AppDecoration
                                                    .fillGray100
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderBL16),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  205.00),
                                                          margin:
                                                              getMargin(top: 1),
                                                          child: Text(
                                                              controller
                                                                  .chatList[
                                                                      index]
                                                                  .msg,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtOutfitLight14))
                                                    ])),
                                          )),
                                );
                              })),
                              CustomTextFormField(
                                  width: size.width,
                                  focusNode: FocusNode(),
                                  controller: controller.inputFieldController,
                                  hintText: "lbl_type_something".tr,
                                  margin: getMargin(
                                    top: 13,
                                  ),
                                  variant: TextFormFieldVariant.FillGray100,
                                  shape: TextFormFieldShape.CircleBorder28,
                                  padding: TextFormFieldPadding.PaddingT15,
                                  onFieldSubmitted: (val) =>
                                      controller.onFieldSubmitted(val),
                                  fontStyle:
                                      TextFormFieldFontStyle.OutfitLight16,
                                  textInputAction: TextInputAction.done,
                                  suffix: InkWell(
                                    onTap: () => controller.onFieldSubmitted(
                                        controller.inputFieldController.text),
                                    child: Container(
                                        padding: getPadding(all: 12),
                                        margin: getMargin(
                                            left: 12,
                                            top: 8,
                                            right: 8,
                                            bottom: 8),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.teal900,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(20.00))),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgEventoIcons)),
                                  ),
                                  suffixConstraints: BoxConstraints(
                                      minWidth: getHorizontalSize(16.00),
                                      minHeight: getVerticalSize(16.00)))
                            ])),
                  ),
                ],
              )
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
