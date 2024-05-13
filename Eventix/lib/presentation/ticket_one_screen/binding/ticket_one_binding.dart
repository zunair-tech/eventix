import '../controller/ticket_one_controller.dart';
import 'package:get/get.dart';

class TicketOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketOneController());
  }
}
