import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/search_result_screen/models/search_result_model.dart';

class SearchResultController extends GetxController {
  Rx<SearchResultModel> searchResultModelObj = SearchResultModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
