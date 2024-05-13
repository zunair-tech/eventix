import '../organizer_profile_past_page/widgets/pastevent_item_widget.dart';
import 'controller/organizer_profile_past_controller.dart';
import 'models/organizer_profile_past_model.dart';
import 'models/pastevent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore_for_file: must_be_immutable
class OrganizerProfilePastPage extends StatelessWidget {
  OrganizerProfilePastController controller =
      Get.put(OrganizerProfilePastController(OrganizerProfilePastModel().obs));

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        padding: getPadding(left: 24, right: 24, top: 20),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: controller
            .organizerProfilePastModelObj.value.pasteventItemList.length,
        itemBuilder: (context, index) {
          PasteventItemModel model = controller
              .organizerProfilePastModelObj.value.pasteventItemList[index];
          return PasteventItemWidget(
            model,
          );
        },
      ),
    );
  }
}
