import 'package:flutter/material.dart';
import 'package:Eventix/widgets/spacing.dart';

import '../core/app_export.dart';

//ignore: must_be_immutable
class CustomCheckbox extends StatelessWidget {
  CustomCheckbox(
      {this.shape,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.padding,
      this.iconSize,
      this.value,
      this.onChange,
      this.widget,
      this.text});

  CheckboxShape? shape;

  CheckboxVariant? variant;

  CheckboxFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? padding;
  Widget? widget;
  double? iconSize;

  bool? value;

  Function(bool)? onChange;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildCheckboxWidget(),
          )
        : _buildCheckboxWidget();
  }

  _buildCheckboxWidget() {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          value = !(value!);
          onChange!(value!);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: getHorizontalSize(iconSize ?? 0),
              width: getHorizontalSize(iconSize ?? 0),
              margin: getMargin(top: 2),
              child: Theme(
                data: ThemeData(unselectedWidgetColor: ColorConstant.gray400),
                child: Checkbox(
                  shape: _setShape(),
                  value: value ?? false,
                  activeColor: ColorConstant.teal900,
                  onChanged: (value) {
                    onChange!(value!);
                  },
                ),
              ),
            ),
            HorizontalSpace(width: 10),
            Expanded(
              child: widget ??
                  Text(
                    text ?? "",
                    textAlign: TextAlign.start,
                    style: _setFontStyle(),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case CheckboxShape.RoundedBorder2:
        return BorderRadius.circular(
          getHorizontalSize(
            2.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
    }
  }

  _setShape() {
    switch (variant) {
      default:
        return RoundedRectangleBorder(
          borderRadius: _setOutlineBorderRadius(),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      default:
        return AppStyle.txtOutfitRegular12Gray900.copyWith(height: 1.56);
    }
  }
}

enum CheckboxShape {
  RoundedBorder8,
  RoundedBorder2,
}

enum CheckboxVariant { Widget }

enum CheckboxFontStyle { NotoSansJPRegular12 }
