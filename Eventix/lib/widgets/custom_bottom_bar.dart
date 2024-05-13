import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

//ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgDownload,
      type: BottomBarEnum.Download,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFavorite24x24,
      type: BottomBarEnum.Favorite24x24,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearchRed50,
      type: BottomBarEnum.Searchred50,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTicket,
      type: BottomBarEnum.Ticket,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser24x24,
      type: BottomBarEnum.User24x24,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: ColorConstant.whiteA700,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              24.00,
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getSize(
                  24.00,
                ),
                width: getSize(
                  24.00,
                ),
                color: ColorConstant.teal300,
              ),
              activeIcon: Container(
                decoration: AppDecoration.fillBlue20099.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder24,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: ColorConstant.teal900,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder24,
                      ),
                      child: Container(
                        height: getSize(
                          48.00,
                        ),
                        width: getSize(
                          48.00,
                        ),
                        padding: getPadding(
                          top: 12,
                          bottom: 12,
                        ),
                        decoration: AppDecoration.fillTeal900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder24,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: bottomMenuList[index].icon,
                              height: getSize(
                                24.00,
                              ),
                              width: getSize(
                                24.00,
                              ),
                              color: ColorConstant.red50,
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged!(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Download,
  Favorite24x24,
  Searchred50,
  Ticket,
  User24x24,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
