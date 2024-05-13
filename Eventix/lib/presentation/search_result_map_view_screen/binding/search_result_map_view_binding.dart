import '../controller/search_result_map_view_controller.dart';
import 'package:get/get.dart';

class SearchResultMapViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchResultMapViewController());
  }
}
