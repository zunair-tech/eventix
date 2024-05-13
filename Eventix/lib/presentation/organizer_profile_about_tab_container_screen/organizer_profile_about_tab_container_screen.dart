import 'package:Eventix/widgets/bk_btn.dart';

import '../../widgets/spacing.dart';
import 'controller/organizer_profile_about_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/organizer_profile_about_page/organizer_profile_about_page.dart';
import 'package:Eventix/presentation/organizer_profile_events_page/organizer_profile_events_page.dart';
import 'package:Eventix/presentation/organizer_profile_past_page/organizer_profile_past_page.dart';
import 'package:Eventix/widgets/app_bar/appbar_title.dart';
import 'package:Eventix/widgets/app_bar/custom_app_bar.dart';

class OrganizerProfileAboutTabContainerScreen extends StatefulWidget {
  @override
  State<OrganizerProfileAboutTabContainerScreen> createState() =>
      _OrganizerProfileAboutTabContainerScreenState();
}

class _OrganizerProfileAboutTabContainerScreenState
    extends State<OrganizerProfileAboutTabContainerScreen>
    with SingleTickerProviderStateMixin {
  var controller = Get.put(OrganizerProfileAboutTabContainerController());

  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: size.width,
                          padding: getPadding(top: 20, bottom: 20),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(56.00),
                                    leadingWidth: 48,
                                    leading: Container(
                                      height: getSize(24.00),
                                      width: getSize(24.00),
                                      child: BkBtn(),
                                      margin: getMargin(left: 4),
                                    ),
                                    title: AppbarTitle(
                                        text: "msg_organizer_profile".tr,
                                        margin: getMargin(left: 16))),
                                Padding(
                                    padding: getPadding(top: 10, left: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.followOrganizer,
                                              height: getSize(128.00),
                                              width: getSize(128.00),
                                              alignment: Alignment.center),
                                          Expanded(
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 24, top: 1),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "lbl_indosport_inc"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOutfitMedium18Gray900),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 8),
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .location,
                                                                height: getSize(
                                                                    16.00),
                                                                width: getSize(
                                                                    16.00),
                                                                margin:
                                                                    getMargin(
                                                                        top: 1,
                                                                        bottom:
                                                                            3)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            8),
                                                                child: Text(
                                                                    "lbl_bali_indonesia"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtOutfitLight16))
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 2),
                                                          child: Row(children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgStar,
                                                                color:
                                                                    ColorConstant
                                                                        .black900,
                                                                height: getSize(
                                                                    16.00),
                                                                width: getSize(
                                                                    16.00),
                                                                margin:
                                                                    getMargin(
                                                                        top: 1,
                                                                        bottom:
                                                                            3)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            8),
                                                                child: Text(
                                                                    "lbl_143_events"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtOutfitLight16))
                                                          ])),
                                                      Obx(() {
                                                        return controller
                                                                .isFollowed
                                                                .value
                                                            ? Padding(
                                                                padding:
                                                                    getPadding(
                                                                        right:
                                                                            20,
                                                                        top:
                                                                            14),
                                                                child: Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Container(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        padding:
                                                                            getPadding(all: 6),
                                                                        width: getHorizontalSize(
                                                                            127),
                                                                        decoration: AppDecoration
                                                                            .fillGray100
                                                                            .copyWith(borderRadius: BorderRadius.circular(20)),
                                                                        child:
                                                                            Text(
                                                                          'Following',
                                                                          style:
                                                                              AppStyle.txtOutfitMedium16Gray400,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    HorizontalSpace(
                                                                        width:
                                                                            14),
                                                                    CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .addFriend,
                                                                      height:
                                                                          30,
                                                                      width: 30,
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            : InkWell(
                                                                onTap: () => controller
                                                                    .isFollowed
                                                                    .value = true,
                                                                child:
                                                                    Container(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  padding:
                                                                      getPadding(
                                                                          all:
                                                                              6),
                                                                  margin:
                                                                      getMargin(
                                                                          right:
                                                                              20,
                                                                          top:
                                                                              14),
                                                                  width: size
                                                                      .width,
                                                                  decoration: AppDecoration
                                                                      .fillBlue100
                                                                      .copyWith(
                                                                          borderRadius:
                                                                              BorderRadius.circular(20)),
                                                                  child: Text(
                                                                    'Follow',
                                                                    style: AppStyle
                                                                        .txtOutfitMedium16Teal300
                                                                        .copyWith(
                                                                            color:
                                                                                ColorConstant.teal900),
                                                                  ),
                                                                ),
                                                              );
                                                      }),
                                                    ])),
                                          )
                                        ]))
                              ])),
                      Container(
                          margin: getMargin(top: 16, right: 24, left: 24),
                          decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(28.00))),
                          child: TabBar(
                              controller: tabController,
                              tabs: [
                                Tab(text: "lbl_events".tr),
                                Tab(text: "lbl_past".tr),
                                Tab(text: "lbl_about".tr)
                              ],
                              labelColor: ColorConstant.whiteA700,
                              unselectedLabelColor: ColorConstant.gray400,
                              padding: getPadding(
                                  left: 8, top: 8, bottom: 8, right: 8),
                              indicator: BoxDecoration(
                                  color: ColorConstant.teal900,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(20.00))))),
                      Expanded(
                        child: Container(
                            child: TabBarView(
                                controller: tabController,
                                children: [
                              OrganizerProfileEventsPage(),
                              OrganizerProfilePastPage(),
                              OrganizerProfileAboutPage()
                            ])),
                      )
                    ]))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
