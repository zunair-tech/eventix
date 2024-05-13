import 'package:Eventix/presentation/favorite_events_tab_container_screen/favorite_events_tab_container_screen.dart';
import 'package:Eventix/presentation/past_tickets_tab_container_screen/past_tickets_tab_container_screen.dart';
import 'package:Eventix/presentation/search_screen/search_screen.dart';
import 'package:Eventix/presentation/ticket_one_screen/ticket_one_screen.dart';

import 'controller/home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/home_page/home_page.dart';
import 'package:Eventix/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5002,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Download:
        return AppRoutes.homePage;
      case BottomBarEnum.Favorite24x24:
        return AppRoutes.favoriteEventsTabContainerScreen;
      case BottomBarEnum.Searchred50:
        return AppRoutes.searchScreen;
      case BottomBarEnum.Ticket:
        return AppRoutes.pastTicketsTabContainerScreen;
      case BottomBarEnum.User24x24:
        return AppRoutes.ticketOneScreen;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.favoriteEventsTabContainerScreen:
        return FavoriteEventsTabContainerScreen();
      case AppRoutes.searchScreen:
        return SearchScreen();
      case AppRoutes.pastTicketsTabContainerScreen:
        return PastTicketsTabContainerScreen();
      case AppRoutes.ticketOneScreen:
        return TicketOneScreen();
      default:
        return DefaultWidget();
    }
  }
}
