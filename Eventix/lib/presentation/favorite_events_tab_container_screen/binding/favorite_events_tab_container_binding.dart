import '../controller/favorite_events_tab_container_controller.dart';
import 'package:get/get.dart';

class FavoriteEventsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoriteEventsTabContainerController());
  }
}
