import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/cancel_ticket_bottomsheet/models/cancel_ticket_model.dart';

class CancelTicketController extends GetxController {
  Rx<CancelTicketModel> cancelTicketModelObj = CancelTicketModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
