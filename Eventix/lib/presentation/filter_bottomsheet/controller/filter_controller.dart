import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/presentation/filter_bottomsheet/models/filter_model.dart';

import '../../favorite_event_screen/widgets/models/favorite_event_model.dart';

class FilterController extends GetxController {
  Rx<FilterModel> filterModelObj = FilterModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  Rx<RangeValues> sliderRange = RangeValues(20, 80).obs;
  Rx<bool> isFreeSelected = false.obs;
  RxList<FavoriteEventrModel> categoryItemList = RxList([
    FavoriteEventrModel(img: '🎶', title: 'Music', isSelected: false.obs),
    FavoriteEventrModel(img: '🤡', title: 'Festival', isSelected: false.obs),
    FavoriteEventrModel(img: '⚽️', title: 'Sport', isSelected: false.obs),
    FavoriteEventrModel(img: '🎮', title: 'Game', isSelected: false.obs),
    FavoriteEventrModel(img: '🚙', title: 'Touring', isSelected: false.obs),
    FavoriteEventrModel(img: '🏖', title: 'Beach', isSelected: false.obs),
    FavoriteEventrModel(img: '🎎', title: 'Culture', isSelected: false.obs),
    FavoriteEventrModel(img: '⛺️', title: 'Camping', isSelected: false.obs),
    FavoriteEventrModel(img: '🎠', title: 'Game', isSelected: false.obs),
  ]);

  onSliderChange(RangeValues value) {
    sliderRange.value = value;
  }

  Rx<DateTime> selectedDate1 = DateTime.now().obs;
  Rx<DateTime> selectedDate2 = DateTime.now().obs;

  Future<void> selectDate(
      BuildContext context, Rx<DateTime> selectedDate) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate.value,
        firstDate: DateTime.now(),
        lastDate: DateTime(2101));
    if (picked != null) {
      selectedDate.value = picked;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    filterModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    filterModelObj.value.dropdownItemList.refresh();
  }
}
