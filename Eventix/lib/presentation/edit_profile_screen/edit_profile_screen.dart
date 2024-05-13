import 'package:Eventix/widgets/bg_img.dart';
import 'package:Eventix/widgets/bk_btn.dart';
import 'package:Eventix/widgets/spacing.dart';

import 'controller/edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/core/utils/validation_functions.dart';
import 'package:Eventix/widgets/custom_button.dart';
import 'package:Eventix/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Stack(children: [
                  BgImage(),
                  Column(
                    children: [
                      Padding(
                          padding: getPadding(left: 24, right: 24, top: 30),
                          child: Row(
                            children: [
                              BkBtn(),
                              Text("lbl_edit_profile".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOutfitMedium18Gray900),
                            ],
                          )),
                      VerticalSpace(height: 30),
                      Expanded(
                        child: Container(
                            width: size.width,
                            padding: getPadding(
                                left: 24, top: 32, right: 24, bottom: 32),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder24),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Container(
                                              height: getSize(84.00),
                                              width: getSize(84.00),
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgProfilepict,
                                                        height: getSize(80.00),
                                                        width: getSize(80.00),
                                                        radius: BorderRadius
                                                            .circular(
                                                                getHorizontalSize(
                                                                    20.00)),
                                                        alignment:
                                                            Alignment.topLeft),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            elevation: 0,
                                                            margin:
                                                                EdgeInsets.all(
                                                                    0),
                                                            color: ColorConstant
                                                                .teal300,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder12),
                                                            child: Container(
                                                                height: getSize(
                                                                    24.00),
                                                                width: getSize(
                                                                    24.00),
                                                                padding:
                                                                    getPadding(
                                                                        all: 6),
                                                                decoration: AppDecoration
                                                                    .fillTeal300
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder12),
                                                                child: Stack(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgCamera12x12,
                                                                          height: getSize(
                                                                              12.00),
                                                                          width: getSize(
                                                                              12.00),
                                                                          alignment: Alignment
                                                                              .center,
                                                                          onTap:
                                                                              () {
                                                                            onTapImgCamera();
                                                                          })
                                                                    ]))))
                                                  ])),
                                          CustomTextFormField(
                                              width: 327,
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .inputFieldController,
                                              hintText: "Saud Fahad".tr,
                                              margin: getMargin(top: 40)),
                                          GestureDetector(
                                              onTap: () {
                                                onTapInputField();
                                              },
                                              child: Container(
                                                  margin: getMargin(top: 24),
                                                  padding: getPadding(
                                                      left: 24,
                                                      top: 11,
                                                      right: 24,
                                                      bottom: 11),
                                                  decoration: AppDecoration
                                                      .outlineGray200
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder24),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1),
                                                            child: Obx(() => Text(
                                                                controller
                                                                    .editProfileModelObj
                                                                    .value
                                                                    .dateTxt
                                                                    .value,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtOutfitLight18))),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCalendar24x24,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00))
                                                      ]))),
                                          CustomTextFormField(
                                              width: 327,
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .inputFieldOneController,
                                              hintText: "lbl_your_email".tr,
                                              margin: getMargin(top: 24),
                                              validator: (value) {
                                                if (value == null ||
                                                    (!isValidEmail(value,
                                                        isRequired: true))) {
                                                  return "Please enter valid email";
                                                }
                                                return null;
                                              }),
                                          CustomTextFormField(
                                              width: 327,
                                              focusNode: FocusNode(),
                                              controller: controller
                                                  .inputFieldTwoController,
                                              hintText:
                                                  "msg_your_phone_number".tr,
                                              margin: getMargin(top: 24),
                                              textInputAction:
                                                  TextInputAction.done,
                                              validator: (value) {
                                                if (!isValidPhone(value)) {
                                                  return "Please enter valid phone number";
                                                }
                                                return null;
                                              }),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomButton(
                                      height: 56,
                                      width: 327,
                                      text: "lbl_save".tr,
                                      onTap: () => Get.back(),
                                      margin: getMargin(bottom: 8))
                                ])),
                      ),
                    ],
                  )
                ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    // List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      value = value;
    });
  }

  Future<void> onTapInputField() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller.editProfileModelObj.value.selectedDateTxt,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.editProfileModelObj.value.selectedDateTxt = dateTime;
      controller.editProfileModelObj.value.dateTxt.value =
          dateTime.format(FULL_DATE_FORMAT);
    }
  }
}
