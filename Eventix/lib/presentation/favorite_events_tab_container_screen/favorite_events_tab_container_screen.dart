import 'package:Eventix/widgets/bg_img.dart';

import 'controller/favorite_events_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/favorite_events_page/favorite_events_page.dart';
import 'package:Eventix/presentation/favorite_organizers_page/favorite_organizers_page.dart';

class FavoriteEventsTabContainerScreen extends StatefulWidget {
  @override
  State<FavoriteEventsTabContainerScreen> createState() =>
      _FavoriteEventsTabContainerScreenState();
}

class _FavoriteEventsTabContainerScreenState
    extends State<FavoriteEventsTabContainerScreen>
    with SingleTickerProviderStateMixin {
  var controller = Get.put(FavoriteEventsTabContainerController());

  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = tabController = TabController(length: 2, vsync: this);
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
        body: Stack(
          alignment: Alignment.topLeft,
          children: [
            BgImage(),
            Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: getPadding(top: 40, left: 24),
                    child: Text(
                      "lbl_favorite".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: AppStyle.txtOutfitMedium18Gray900,
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(top: 30, left: 24, right: 24),
                  decoration: BoxDecoration(
                    color: ColorConstant.deepOrange100,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        10.00,
                      ),
                    ),
                  ),
                  child: TabBar(
                    controller: tabController,
                    tabs: [
                      Tab(
                        text: "lbl_events".tr,
                      ),
                     
                    ],
                    labelColor: ColorConstant.blue20099,
                    unselectedLabelColor: ColorConstant.gray400,
                    indicator: BoxDecoration(
                      color: ColorConstant.teal900,
                     
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      FavoriteEventsPage(),
                      FavoriteOrganizersPage(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
