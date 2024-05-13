import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/search_result_map_view_screen/models/search_result_map_view_model.dart';

class SearchResultMapViewController extends GetxController {
  Rx<SearchResultMapViewModel> searchResultMapViewModelObj =
      SearchResultMapViewModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
