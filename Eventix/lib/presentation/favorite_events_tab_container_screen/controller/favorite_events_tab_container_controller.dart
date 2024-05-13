import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/favorite_events_tab_container_screen/models/favorite_events_tab_container_model.dart';

class FavoriteEventsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<FavoriteEventsTabContainerModel> favoriteEventsTabContainerModelObj =
      FavoriteEventsTabContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
