import '../controller/loading_personalization_controller.dart';
import 'package:get/get.dart';

class LoadingPersonalizationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoadingPersonalizationController());
  }
}
