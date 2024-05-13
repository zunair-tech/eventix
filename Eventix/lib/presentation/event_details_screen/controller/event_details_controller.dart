import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/event_details_screen/models/event_details_model.dart';

class EventDetailsController extends GetxController {
  Rx<EventDetailsModel> eventDetailsModelObj = EventDetailsModel().obs;

  Rx<int> photoSliderIndex = 0.obs;
  Rx<bool> isFav = true.obs;
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
