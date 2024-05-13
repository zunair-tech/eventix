import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/loading_personalization_screen/models/loading_personalization_model.dart';

class LoadingPersonalizationController extends GetxController {
  Rx<LoadingPersonalizationModel> loadingPersonalizationModelObj =
      LoadingPersonalizationModel().obs;

  @override
  void onReady() {
    super.onReady();

    Future.delayed(Duration(milliseconds: 1500), () {
      Get.toNamed(AppRoutes.homeContainerScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
