import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/past_tickets_page/models/past_tickets_model.dart';

class PastTicketsController extends GetxController {
  PastTicketsController(this.pastTicketsModelObj);

  Rx<PastTicketsModel> pastTicketsModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
