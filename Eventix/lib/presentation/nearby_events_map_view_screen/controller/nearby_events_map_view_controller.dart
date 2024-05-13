import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/nearby_events_map_view_screen/models/nearby_events_map_view_model.dart';

class NearbyEventsMapViewController extends GetxController {
  Rx<NearbyEventsMapViewModel> nearbyEventsMapViewModelObj =
      NearbyEventsMapViewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
