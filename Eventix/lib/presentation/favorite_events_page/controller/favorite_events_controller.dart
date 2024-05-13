import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/favorite_events_page/models/favorite_events_model.dart';

class FavoriteEventsController extends GetxController {
  FavoriteEventsController(this.favoriteEventsModelObj);

  Rx<FavoriteEventsModel> favoriteEventsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
