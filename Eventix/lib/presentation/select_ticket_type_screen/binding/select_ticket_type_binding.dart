import '../controller/select_ticket_type_controller.dart';
import 'package:get/get.dart';

class SelectTicketTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectTicketTypeController());
  }
}
