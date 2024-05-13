import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/ticket_detail_screen/models/ticket_detail_model.dart';

class TicketDetailController extends GetxController {
  Rx<TicketDetailModel> ticketDetailModelObj = TicketDetailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
