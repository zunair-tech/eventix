import '../controller/contact_organizer_controller.dart';
import 'package:get/get.dart';

class ContactOrganizerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactOrganizerController());
  }
}
