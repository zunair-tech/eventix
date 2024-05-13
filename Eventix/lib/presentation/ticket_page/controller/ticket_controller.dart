import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/ticket_page/models/ticket_model.dart';

class TicketController extends GetxController {
  TicketController(this.ticketModelObj);

  Rx<TicketModel> ticketModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
