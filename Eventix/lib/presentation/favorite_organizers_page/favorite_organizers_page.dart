import '../favorite_organizers_page/widgets/listgroupeleven_item_widget.dart';
import 'controller/favorite_organizers_controller.dart';
import 'models/favorite_organizers_model.dart';
import 'models/listgroupeleven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FavoriteOrganizersPage extends StatelessWidget {
  FavoriteOrganizersController controller =
      Get.put(FavoriteOrganizersController(FavoriteOrganizersModel().obs));

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        padding: getPadding(bottom: 30, top: 20, right: 24, left: 24),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller
            .favoriteOrganizersModelObj.value.listgroupelevenItemList.length,
        itemBuilder: (context, index) {
          ListgroupelevenItemModel model = controller
              .favoriteOrganizersModelObj.value.listgroupelevenItemList[index];
          return ListgroupelevenItemWidget(
            model,
          );
        },
      ),
    );
  }
}
