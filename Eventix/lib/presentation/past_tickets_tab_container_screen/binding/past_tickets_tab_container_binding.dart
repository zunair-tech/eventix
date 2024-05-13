import '../controller/past_tickets_tab_container_controller.dart';
import 'package:get/get.dart';

class PastTicketsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PastTicketsTabContainerController());
  }
}
