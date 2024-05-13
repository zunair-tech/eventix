import 'package:Eventix/core/app_export.dart';

import '../models/follow_organizer_page_model.dart';

class FollowOrganizerController extends GetxController {
  Rx<FolowOrganizerPageModel> favoriteEventModelObj =
      FolowOrganizerPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
