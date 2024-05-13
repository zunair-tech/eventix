import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/past_tickets_tab_container_screen/models/past_tickets_tab_container_model.dart';

class PastTicketsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<PastTicketsTabContainerModel> pastTicketsTabContainerModelObj =
      PastTicketsTabContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
