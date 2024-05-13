import '../controller/organizer_profile_about_tab_container_controller.dart';
import 'package:get/get.dart';

class OrganizerProfileAboutTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrganizerProfileAboutTabContainerController());
  }
}
