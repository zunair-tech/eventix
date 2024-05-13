import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:Eventix/presentation/cancel_ticket_bottomsheet/cancel_ticket_bottomsheet.dart';
import 'package:Eventix/widgets/spacing.dart';

import '../cancel_ticket_bottomsheet/controller/cancel_ticket_controller.dart';
import '../ticket_detail_screen/widgets/ticket_detail_item_widget.dart';
import 'controller/ticket_detail_controller.dart';
import 'models/ticket_detail_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_button.dart';
import 'package:Eventix/widgets/custom_icon_button.dart';

class TicketDetailScreen extends GetWidget<TicketDetailController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Stack(children: [
              Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                              padding: getPadding(left: 24, right: 24, top: 30),
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () => Get.offNamedUntil(
                                          AppRoutes.homeContainerScreen,
                                          (route) => false),
                                      icon: Icon(
                                        Icons.arrow_back_rounded,
                                        color: Colors.black,
                                      )),
                                  Text("lbl_ticket_detail".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOutfitMedium18Gray900),
                                ],
                              )),
                          Container(
                              width: getHorizontalSize(327.00),
                              margin: getMargin(left: 24, top: 10, right: 24),
                              padding: getPadding(all: 16),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: fs.Svg(
                                          ImageConstant.imgTicketWhiteA700),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: getHorizontalSize(242.00),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .MDL,
                                                        height: getSize(64.00),
                                                        width: getSize(64.00),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    8.00)),
                                                        margin: getMargin(
                                                            bottom: 2)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 2),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          166.00),
                                                                  child: Text(
                                                                      "MDL BEAST"
                                                                          .tr,
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtOutfitMedium16Gray900)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              4),
                                                                  child: Text(
                                                                      "Banban, Riyadh"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtOutfitLight12))
                                                            ]))
                                                  ])),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgDownload24x24,
                                              height: getSize(24.00),
                                              width: getSize(24.00),
                                              margin: getMargin(bottom: 42))
                                        ]),
                                    Container(
                                      height: getVerticalSize(1.00),
                                      width: getHorizontalSize(279.00),
                                      margin: getMargin(top: 21),
                                      decoration: DottedDecoration(
                                          color: ColorConstant.gray400,
                                          shape: Shape.line,
                                          linePosition: LinePosition.bottom),
                                    ),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 8, top: 29),
                                            child: Text("lbl_place".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitMedium12))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 8, top: 10),
                                            child: Text(
                                                "Banban, Riyaadh".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitLight14))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 8, top: 17, right: 55),
                                            child: Obx(() => ListView.builder(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: controller
                                                    .ticketDetailModelObj
                                                    .value
                                                    .ticketDetailItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  TicketDetailItemModel model =
                                                      controller
                                                          .ticketDetailModelObj
                                                          .value
                                                          .ticketDetailItemList[index];
                                                  return TicketDetailItemWidget(
                                                      model);
                                                })))),
                                    Container(
                                      height: getVerticalSize(1.00),
                                      width: getHorizontalSize(279.00),
                                      margin: getMargin(top: 30),
                                      decoration: DottedDecoration(
                                          color: ColorConstant.gray400,
                                          shape: Shape.line,
                                          linePosition: LinePosition.bottom),
                                    ),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgBarcode,
                                        height: getVerticalSize(68.00),
                                        width: getHorizontalSize(279.00),
                                        margin: getMargin(top: 23)),
                                    Padding(
                                        padding:
                                            getPadding(top: 13, bottom: 14),
                                        child: Text("msg_scan_this_barcode".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtOutfitLight12))
                                  ])),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(bottom: 20),
                    child: Row(
                      children: [
                        CustomIconButton(
                          height: 56,
                          width: 56,
                          margin: getMargin(
                            left: 24,
                          ),
                          variant: IconButtonVariant.FillDeeporange500,
                          shape: IconButtonShape.RoundedBorder27,
                          padding: IconButtonPadding.PaddingAll16,
                          alignment: Alignment.bottomLeft,
                          child:
                              CustomImageView(svgPath: ImageConstant.imgTrash),
                          onTap: () => Get.bottomSheet(
                              CancelTicketBottomsheet(
                                  Get.put(CancelTicketController())),
                              isScrollControlled: true),
                        ),
                        HorizontalSpace(width: 19),
                        CustomButton(
                            height: 56,
                            width: 255,
                            text: "lbl_direction".tr,
                            margin: getMargin(
                              right: 24,
                            ),
                            alignment: Alignment.bottomRight),
                            
                      ],
                    ),
                  ),
                ],
              )
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
