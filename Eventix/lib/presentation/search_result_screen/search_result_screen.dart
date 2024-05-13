import '../search_result_screen/widgets/searchresult_item_widget.dart';
import 'controller/search_result_controller.dart';
import 'models/searchresult_item_model.dart';
import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

//ignore: must_be_immutable
class SearchResultScreen extends StatelessWidget {
  var controller = Get.put(SearchResultController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
        padding: getPadding(left: 24, right: 24),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount:
            controller.searchResultModelObj.value.searchresultItemList.length,
        itemBuilder: (context, index) {
          SearchresultItemModel model =
              controller.searchResultModelObj.value.searchresultItemList[index];
          return SearchresultItemWidget(model);
        }));
  }
}
