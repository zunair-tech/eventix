import '../controller/nearby_events_map_view_controller.dart';
import 'package:get/get.dart';

class NearbyEventsMapViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NearbyEventsMapViewController());
  }
}
