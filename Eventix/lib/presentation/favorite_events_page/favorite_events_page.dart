import '../favorite_events_page/widgets/favoriteevents_item_widget.dart';
import 'controller/favorite_events_controller.dart';
import 'models/favorite_events_model.dart';
import 'models/favoriteevents_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FavoriteEventsPage extends StatelessWidget {
  FavoriteEventsController controller =
      Get.put(FavoriteEventsController(FavoriteEventsModel().obs));

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        padding: getPadding(left: 24, right: 24, bottom: 30, top: 20),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller
            .favoriteEventsModelObj.value.favoriteeventsItemList.length,
        itemBuilder: (context, index) {
          FavoriteeventsItemModel model = controller
              .favoriteEventsModelObj.value.favoriteeventsItemList[index];
          return FavoriteeventsItemWidget(
            model,
          );
        },
      ),
    );
  }
}
