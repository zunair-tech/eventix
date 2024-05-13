import '../controller/nearby_events_controller.dart';
import 'package:get/get.dart';

class NearbyEventsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NearbyEventsController());
  }
}
