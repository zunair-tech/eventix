import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/favorite_organizers_page/models/favorite_organizers_model.dart';

class FavoriteOrganizersController extends GetxController {
  FavoriteOrganizersController(this.favoriteOrganizersModelObj);

  Rx<FavoriteOrganizersModel> favoriteOrganizersModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
