import 'package:carousel_slider/carousel_slider.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:Eventix/widgets/spacing.dart';

import 'controller/event_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/app_bar/appbar_iconbutton.dart';
import 'package:Eventix/widgets/app_bar/custom_app_bar.dart';
import 'package:Eventix/widgets/custom_button.dart';
import 'package:Eventix/widgets/custom_icon_button.dart';

class EventDetailsScreen extends GetWidget<EventDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Stack(children: [
              Obx(() {
                return Container(
                    height: getVerticalSize(400.00),
                    width: size.width,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      CarouselSlider.builder(
                        itemCount: 3,
                        options: CarouselOptions(
                            height: 400.0,
                            aspectRatio: 1,
                            onPageChanged: (index, reason) =>
                                controller.photoSliderIndex.value = index,
                            padEnds: false,
                            enableInfiniteScroll: false,
                            viewportFraction: 1,
                            scrollDirection: Axis.vertical),
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            CustomImageView(
                          imagePath: ImageConstant.MDL,
                          height: getVerticalSize(400.00),
                          radius:
                              BorderRadius.circular(getHorizontalSize(12.00)),
                        ),
                      ),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: getPadding(
                                top: 12,
                              ),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomAppBar(
                                        height: getVerticalSize(56.00),
                                        leadingWidth: 64,
                                        leading: AppbarIconbutton(
                                            svgPath: ImageConstant.imgArrowleft,
                                            margin: getMargin(left: 24),
                                            onTap: onTapArrowleft2),
                                        actions: [
                                          Obx(() {
                                            return AppbarIconbutton(
                                              svgPath: controller.isFav.value
                                                  ? ImageConstant.favbold
                                                  : ImageConstant.imgFavorite,
                                              margin: getMargin(
                                                  left: 24, right: 24),
                                              onTap: () =>
                                                  controller.isFav.value =
                                                      !controller.isFav.value,
                                            );
                                          })
                                        ]),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              getPadding(right: 24, top: 40),
                                          child: AnimatedSmoothIndicator(
                                            activeIndex: controller
                                                .photoSliderIndex.value,
                                            count: 3,
                                            axisDirection: Axis.vertical,
                                            effect: WormEffect(
                                                spacing: 8.0,
                                                radius: 4.0,
                                                dotWidth: 10.0,
                                                dotHeight: 10.0,
                                                dotColor: Colors.white
                                                    .withOpacity(0.5),
                                                activeDotColor: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                        padding: getPadding(
                                            top: 50, left: 24, right: 24),
                                        child: Text("MDL BEAST".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOutfitSemiBold24WhiteA700)),
                                    Padding(
                                        padding: getPadding(
                                            top: 11, left: 24, right: 24),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCalendar12x12,
                                              height: getSize(16.00),
                                              width: getSize(16.00)),
                                          Padding(
                                              padding: getPadding(left: 4),
                                              child: Text("lbl_dec_22_7pm".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOutfitLight12WhiteA70099)),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLocation12x12,
                                              height: getSize(16.00),
                                              width: getSize(16.00),
                                              margin: getMargin(left: 12)),
                                          Padding(
                                              padding: getPadding(left: 4),
                                              child: Text("Riyadh".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOutfitLight12WhiteA70099))
                                        ]))
                                  ])))
                    ]));
              }),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: size.height * .6,
                  decoration: AppDecoration.fillWhiteA700
                      .copyWith(borderRadius: BorderRadius.circular(24)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: getPadding(
                                  left: 24, top: 20, right: 24, bottom: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_start_from".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtOutfitLight12),
                                          Padding(
                                              padding: getPadding(top: 6),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "SAR35".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .indigo600,
                                                            fontSize:
                                                                getFontSize(24),
                                                            fontFamily:
                                                                'Outfit',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600)),
                                                    TextSpan(
                                                        text: "-SAR5500".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .gray400,
                                                            fontSize:
                                                                getFontSize(16),
                                                            fontFamily:
                                                                'Outfit',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500))
                                                  ]),
                                                  textAlign: TextAlign.left))
                                        ]),
                                    Padding(
                                        padding: getPadding(
                                          top: 1,
                                        ),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_participant".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOutfitLight12),
                                              Container(
                                                  height:
                                                      getVerticalSize(28.00),
                                                  width:
                                                      getHorizontalSize(128.00),
                                                  margin: getMargin(top: 8),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .part1,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        14.00)),
                                                            alignment: Alignment
                                                                .centerLeft),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .part2,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        14.00)),
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            margin: getMargin(
                                                                left: 20)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .part3,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        14.00)),
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            margin: getMargin(
                                                                left: 40)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .part4,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        14.00)),
                                                            alignment: Alignment
                                                                .centerRight,
                                                            margin: getMargin(
                                                                right: 40)),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .part5,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        14.00)),
                                                            alignment: Alignment
                                                                .centerRight,
                                                            margin: getMargin(
                                                                right: 20)),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Container(
                                                                width: getSize(
                                                                    28.00),
                                                                padding:
                                                                    getPadding(
                                                                        left: 5,
                                                                        top: 6,
                                                                        right:
                                                                            5,
                                                                        bottom:
                                                                            6),
                                                                decoration: AppDecoration
                                                                    .txtOutlineWhiteA700
                                                                    .copyWith(
                                                                        borderRadius: BorderRadiusStyle
                                                                            .txtCircleBorder14),
                                                                child: Text(
                                                                    "lbl_1_5k"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtOutfitLight10WhiteA700)))
                                                      ]))
                                            ]))
                                  ]),
                            )),
                        Container(
                            width: size.width,
                            decoration: AppDecoration.fillGray5002.copyWith(
                                borderRadius: BorderRadius.circular(24)),
                            child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    onTap: () => Get.toNamed(AppRoutes
                                        .organizerProfileAboutTabContainerScreen),
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            margin: getMargin(
                                              left: 24,
                                              top: 24,
                                              right: 24,
                                            ),
                                            padding: getPadding(
                                                left: 15,
                                                top: 10,
                                                right: 15,
                                                bottom: 10),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder16),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 1, top: 1),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("MDL BEAST".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtOutfitMedium16Gray900),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgLocation1,
                                                                          height: getSize(
                                                                              12.00),
                                                                          width: getSize(
                                                                              12.00),
                                                                          margin:
                                                                              getMargin(bottom: 1)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  4),
                                                                          child: Text(
                                                                              "Banban".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtOutfitLight10Gray60099)),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgStar,
                                                                          height: getSize(
                                                                              12.00),
                                                                          width: getSize(
                                                                              12.00),
                                                                          margin: getMargin(
                                                                              left: 12,
                                                                              bottom: 1)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  4),
                                                                          child: Text(
                                                                              "3 events".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtOutfitLight10Gray60099))
                                                                    ]))
                                                          ])),
                                                  Obx(() {
                                                    return controller
                                                            .isFollowed.value
                                                        ? Container(
                                                            alignment: Alignment
                                                                .center,
                                                            padding: getPadding(
                                                                all: 6),
                                                            width:
                                                                getHorizontalSize(
                                                                    99),
                                                            decoration: AppDecoration
                                                                .fillGray100
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                            child: Text(
                                                              'Following',
                                                              style: AppStyle
                                                                  .txtOutfitMedium16Gray400,
                                                            ),
                                                          )
                                                        : InkWell(
                                                            onTap: () =>
                                                                controller
                                                                    .isFollowed
                                                                    .value = true,
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              padding:
                                                                  getPadding(
                                                                      all: 6),
                                                              width:
                                                                  getHorizontalSize(
                                                                      99),
                                                              decoration: AppDecoration
                                                                  .fillBlue100
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20)),
                                                              child: Text(
                                                                'Follow',
                                                                style: AppStyle
                                                                    .txtOutfitMedium16Teal300
                                                                    .copyWith(
                                                                        color: ColorConstant
                                                                            .teal900),
                                                              ),
                                                            ),
                                                          );
                                                  }),
                                                ]))),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                        left: 24,
                                        right: 24,
                                        top: 20,
                                        bottom: 20),
                                    child: ReadMoreText(
                                      'MDLBEAST is an entertainment company rooted in music culture. Based in Saudi Arabia and shared globally  we are here to amplify the unseen. We invest in talent, production and content. As a lifestyle and entertainment experience brand, we create unmatched experiences & music events in Saudi Arabia and the region, and support music in the Middle East.',
                                      trimLines: 4,
                                      colorClickableText: ColorConstant.teal300,
                                      trimMode: TrimMode.Line,
                                      style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(14),
                                          fontFamily: 'Outfit',
                                          fontWeight: FontWeight.w300),
                                      trimCollapsedText: 'Read More',
                                      trimExpandedText: 'Read Less',
                                      moreStyle: TextStyle(
                                          color: ColorConstant.teal300,
                                          fontSize: getFontSize(14),
                                          fontFamily: 'Outfit',
                                          fontWeight: FontWeight.w500),
                                      lessStyle: TextStyle(
                                          color: ColorConstant.teal300,
                                          fontSize: getFontSize(14),
                                          fontFamily: 'Outfit',
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.MDLL,
                                    height: getVerticalSize(164.00),
                                    width: getHorizontalSize(327.00),
                                    alignment: Alignment.bottomCenter,
                                    onTap: () => Get.toNamed(
                                        AppRoutes.nearbyEventsScreen),
                                  ),
                                  VerticalSpace(height: 100)
                                ])),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    width: size.width,
                    margin: getMargin(top: 10, bottom: 20),
                    padding: getPadding(left: 24, top: 4, right: 24, bottom: 4),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIconButton(
                              height: 56,
                              width: 56,
                              onTap: () =>
                                  Get.toNamed(AppRoutes.contactOrganizerScreen),
                              shape: IconButtonShape.RoundedBorder27,
                              padding: IconButtonPadding.PaddingAll16,
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgComputer56x56)),
                          CustomButton(
                            height: 56,
                            width: 255,
                            text: "lbl_buy_ticket".tr,
                            onTap: () =>
                                Get.toNamed(AppRoutes.selectTimeScreen),
                          )
                        ])),
              )
            ])));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
