import 'package:Eventix/widgets/bg_img.dart';

import 'controller/past_tickets_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/past_tickets_page/past_tickets_page.dart';
import 'package:Eventix/presentation/ticket_page/ticket_page.dart';

class PastTicketsTabContainerScreen extends StatefulWidget {
  @override
  State<PastTicketsTabContainerScreen> createState() =>
      _PastTicketsTabContainerScreenState();
}

class _PastTicketsTabContainerScreenState
    extends State<PastTicketsTabContainerScreen>
    with SingleTickerProviderStateMixin {
  var controller = Get.put(PastTicketsTabContainerController());
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
        body: Stack(
          children: [
            BgImage(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: getMargin(
                    top: 40,
                  ),
                  padding: getPadding(
                    left: 24,
                    top: 12,
                    right: 24,
                    bottom: 12,
                  ),
                  child: Padding(
                    padding: getPadding(
                      bottom: 12,
                    ),
                    child: Text(
                      "lbl_ticket".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtOutfitMedium18Gray900,
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(top: 20, left: 24, right: 24),
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        28.00,
                      ),
                    ),
                  ),
                  child: TabBar(
                    controller: tabController,
                    tabs: [
                      Tab(
                        text: "lbl_upcoming".tr,
                      ),
                      Tab(
                        text: "lbl_past_tickets".tr,
                      ),
                    ],
                    labelColor: ColorConstant.whiteA700,
                    unselectedLabelColor: ColorConstant.gray400,
                    indicator: BoxDecoration(
                      color: ColorConstant.teal900,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      TicketPage(),
                      PastTicketsPage(),
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
