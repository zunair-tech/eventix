import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:Eventix/widgets/bk_btn.dart';

import 'controller/nearby_events_map_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/app_bar/appbar_image.dart';
import 'package:Eventix/widgets/app_bar/appbar_title.dart';
import 'package:Eventix/widgets/app_bar/custom_app_bar.dart';

//ignore: must_be_immutable
class NearbyEventsMapViewScreen
    extends GetWidget<NearbyEventsMapViewController> {
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  Completer<GoogleMapController> _controller = Completer();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.gray5002,
            appBar: CustomAppBar(
                height: getVerticalSize(90.00),
                leadingWidth: 64,
                leading: Container(
                  margin: getMargin(left: 24, top: 12, bottom: 26),
                  child: BkBtn(),
                ),
                title: AppbarTitle(
                    text: "lbl_nearby_events".tr,
                    margin: getMargin(left: 16, bottom: 20)),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgMenu24x24,
                      margin:
                          getMargin(left: 24, top: 20, right: 24, bottom: 34))
                ],
                styleType: Style.bgFillWhiteA700),
            body: Stack(
              children: [
                GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: getMargin(left: 24, right: 24, bottom: 21),
                      padding: getPadding(top: 12, bottom: 12),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgUnsplashr1swcaghvg0,
                                height: getVerticalSize(100.00),
                                width: getHorizontalSize(103.00),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(8.00)),
                                margin: getMargin(top: 3, bottom: 3)),
                            Padding(
                                padding: getPadding(top: 3),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgFolder,
                                            height: getSize(12.00),
                                            width: getSize(12.00),
                                            margin:
                                                getMargin(top: 6, bottom: 6)),
                                        Padding(
                                            padding: getPadding(
                                                left: 4, top: 6, bottom: 4),
                                            child: Text(
                                                "msg_dec_22_31_11am_5pm".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtOutfitLight10Gray400)),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgFavorite,
                                            height: getSize(24.00),
                                            width: getSize(24.00),
                                            margin: getMargin(left: 40))
                                      ]),
                                      Container(
                                          width: getHorizontalSize(142.00),
                                          margin: getMargin(top: 10),
                                          child: Text(
                                              "msg_international_skateboard".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOutfitMedium16Gray900)),
                                      Container(
                                          width: getHorizontalSize(176.00),
                                          margin: getMargin(top: 7),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: Text(
                                                        "msg_jogja_expo_center"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOutfitLight12)),
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 1),
                                                    child: Text("lbl_free".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtOutfitRegular12))
                                              ]))
                                    ]))
                          ])),
                )
              ],
            )));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
