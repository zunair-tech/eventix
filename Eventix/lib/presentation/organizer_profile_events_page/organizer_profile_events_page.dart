import '../favorite_events_page/models/favoriteevents_item_model.dart';
import '../organizer_profile_events_page/widgets/event_item_widget.dart';
import 'controller/organizer_profile_events_controller.dart';
import 'models/organizer_profile_events_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OrganizerProfileEventsPage extends StatelessWidget {
  OrganizerProfileEventsController controller = Get.put(
      OrganizerProfileEventsController(OrganizerProfileEventsModel().obs));

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        padding: getPadding(left: 24, right: 24, top: 20),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller
            .organizerProfileEventsModelObj.value.eventItemList.length,
        itemBuilder: (context, index) {
          FavoriteeventsItemModel model = controller
              .organizerProfileEventsModelObj.value.eventItemList[index];
          return EventItemWidget(
            model,
          );
        },
      ),
    );
  }
}
