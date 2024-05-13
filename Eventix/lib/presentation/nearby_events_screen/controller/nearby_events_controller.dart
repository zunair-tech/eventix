import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/nearby_events_screen/models/nearby_events_model.dart';

class NearbyEventsController extends GetxController {
  Rx<NearbyEventsModel> nearbyEventsModelObj = NearbyEventsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
