import 'package:Eventix/presentation/filter_bottomsheet/controller/filter_controller.dart';
import 'package:Eventix/presentation/filter_bottomsheet/filter_bottomsheet.dart';
import 'package:Eventix/presentation/search_result_screen/search_result_screen.dart';
import 'package:Eventix/widgets/spacing.dart';

import '../favorite_events_page/models/favoriteevents_item_model.dart';
import '../search_screen/widgets/history_item_widget.dart';
import '../search_screen/widgets/search_item_widget.dart';
import 'controller/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/home_page/home_page.dart';
import 'package:Eventix/widgets/custom_bottom_bar.dart';
import 'package:Eventix/widgets/custom_search_view.dart';

//ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  var controller = Get.put(MySearchController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray5002,
        body: Obx(
          () => Column(
            children: [
              controller.isSearching.value
                  ? Padding(
                      padding: getPadding(top: 50, right: 24, left: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () =>
                                    controller.isSearching.value = false,
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                ),
                              ),
                              HorizontalSpace(width: 10),
                              Text("Sports".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOutfitMedium18Gray900),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgLocation24x24,
                                  height: getSize(24.00),
                                  width: getSize(24.00),
                                  onTap: () => Get.toNamed(
                                      AppRoutes.searchResultMapViewScreen),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgFilter,
                                  height: getSize(24.00),
                                  width: getSize(24.00),
                                  margin: getMargin(left: 16),
                                  onTap: () => Get.bottomSheet(
                                      FilterBottomsheet(
                                          Get.put(FilterController())),
                                      isScrollControlled: true),
                                )
                              ])
                        ],
                      ),
                    )
                  : Container(
                      width: size.width,
                      padding: getPadding(
                        top: 40,
                        left: 24,
                        right: 24,
                        bottom: 24,
                      ),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder24,
                      ),
                      child: CustomSearchView(
                        width: size.width,
                        focusNode: FocusNode(),
                        controller: controller.searchController,
                        hintText: "Search event".tr,
                        onFieldSubmitted: (val) =>
                            controller.isSearching.value = true,
                        padding: SearchViewPadding.PaddingT10_1,
                        prefix: Container(
                          margin: getMargin(
                            left: 24,
                            top: 12,
                            right: 10,
                            bottom: 12,
                          ),
                          child: CustomImageView(
                            svgPath: ImageConstant.imgSearch,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          minWidth: getSize(
                            24.00,
                          ),
                          minHeight: getSize(
                            24.00,
                          ),
                        ),
                      ),
                    ),
              Expanded(
                  child: controller.isSearching.value
                      ? SearchResultScreen()
                      : SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              controller.searchModelObj.value.historyItemList
                                          .length ==
                                      0
                                  ? SizedBox()
                                  : Padding(
                                      padding: getPadding(
                                        left: 24,
                                        top: 30,
                                        right: 24,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  top: 1,
                                                ),
                                                child: Text(
                                                  "lbl_history".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOutfitLight18Gray600,
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  bottom: 1,
                                                ),
                                                child: Text(
                                                  "lbl_clear_all".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOutfitLight18Teal900,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 20,
                                            ),
                                            child: Wrap(
                                              children: List<Widget>.generate(
                                                  controller
                                                      .searchModelObj
                                                      .value
                                                      .historyItemList
                                                      .length, (index) {
                                                String model = controller
                                                    .searchModelObj
                                                    .value
                                                    .historyItemList[index];
                                                return HistoryItemWidget(model,
                                                    index: index);
                                              }),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                              Padding(
                                padding: getPadding(
                                  left: 24,
                                  right: 24,
                                ),
                                child: Text(
                                  "lbl_suggestion".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOutfitLight18Gray600,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 20,
                                ),
                                child: ListView.builder(
                                  padding: getPadding(
                                    left: 24,
                                    right: 24,
                                  ),
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller.searchModelObj.value
                                      .searchItemList.length,
                                  itemBuilder: (context, index) {
                                    FavoriteeventsItemModel model = controller
                                        .searchModelObj
                                        .value
                                        .searchItemList[index];
                                    return SearchItemWidget(
                                      model,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        )),
            ],
          ),
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Download:
        return "/";
      case BottomBarEnum.Favorite24x24:
        return "/";
      case BottomBarEnum.Searchred50:
        return AppRoutes.homePage;
      case BottomBarEnum.Ticket:
        return "/";
      case BottomBarEnum.User24x24:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
