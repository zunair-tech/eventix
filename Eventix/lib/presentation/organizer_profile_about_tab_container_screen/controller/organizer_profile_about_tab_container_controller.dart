import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/organizer_profile_about_tab_container_screen/models/organizer_profile_about_tab_container_model.dart';

class OrganizerProfileAboutTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<OrganizerProfileAboutTabContainerModel>
      organizerProfileAboutTabContainerModelObj =
      OrganizerProfileAboutTabContainerModel().obs;

  Rx<bool> isFollowed = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
