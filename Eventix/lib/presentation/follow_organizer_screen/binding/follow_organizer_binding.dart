import 'package:get/get.dart';

import '../controller/follow_organizer_controller.dart';

class FavoriteEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FollowOrganizerController());
  }
}
