import 'package:Eventix/presentation/search_screen/controller/search_controller.dart';
import 'package:Eventix/widgets/spacing.dart';

import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

// ignore: must_be_immutable
class HistoryItemWidget extends StatelessWidget {
  HistoryItemWidget(this.historyItemModelObj, {required this.index});
  var controller = Get.find<MySearchController>();
  String historyItemModelObj;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        right: 5,
        bottom: 5,
      ),
      child: ChoiceChip(
        label: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              historyItemModelObj,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.indigo600,
                fontSize: getFontSize(
                  14,
                ),
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w300,
              ),
            ),
            HorizontalSpace(width: 4),
            InkWell(
              child: Icon(
                Icons.clear_rounded,
                color: ColorConstant.indigo600,
                size: 16,
              ),
              onTap: () => controller.searchModelObj.value.historyItemList
                  .removeAt(index),
            )
          ],
        ),
        selected: false,
        backgroundColor: ColorConstant.whiteA700,
        selectedColor: ColorConstant.whiteA700,
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              14.00,
            ),
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
