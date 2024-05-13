import 'package:Eventix/core/app_export.dart';

import '../models/favorite_event_page_model.dart';

class FavoriteEventController extends GetxController {
  Rx<FavoriteEventPageModel> favoriteEventModelObj =
      FavoriteEventPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
