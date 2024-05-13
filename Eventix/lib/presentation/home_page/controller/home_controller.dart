import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/home_page/models/home_model.dart';

class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  Rx<HomeModel> homeModelObj;
  var isButtonVisible = true.obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
