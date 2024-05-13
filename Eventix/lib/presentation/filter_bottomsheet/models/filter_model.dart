import 'package:get/get.dart';
import 'package:Eventix/data/models/selectionPopupModel/selection_popup_model.dart';

class FilterModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Al Rabea",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Al Yasmeen",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Al Malga",
    )
  ].obs;
}
