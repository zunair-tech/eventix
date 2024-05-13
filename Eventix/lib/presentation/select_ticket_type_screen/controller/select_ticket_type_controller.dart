import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/select_ticket_type_screen/models/select_ticket_type_model.dart';

class SelectTicketTypeController extends GetxController {
  Rx<SelectTicketTypeModel> selectTicketTypeModelObj =
      SelectTicketTypeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
