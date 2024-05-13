import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

//ignore: must_be_immutable
class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      case IconButtonPadding.PaddingAll16:
        return getPadding(
          all: 16,
        );
      default:
        return getPadding(
          all: 12,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillGray50:
        return ColorConstant.gray50;
      case IconButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillIndigo600:
        return ColorConstant.indigo600;
      case IconButtonVariant.FillGray100:
        return ColorConstant.gray100;
      case IconButtonVariant.FillDeeporange500:
        return ColorConstant.deepOrange500;
      case IconButtonVariant.FillTeal900:
        return ColorConstant.teal900;
      case IconButtonVariant.FillTeal300:
        return ColorConstant.teal300;
      case IconButtonVariant.FillGray900:
        return ColorConstant.gray900;
      default:
        return ColorConstant.blue100;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder21:
        return BorderRadius.circular(
          getHorizontalSize(
            21.00,
          ),
        );
      case IconButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case IconButtonShape.RoundedBorder27:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
      case IconButtonShape.RoundedBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder8,
  RoundedBorder21,
  RoundedBorder16,
  RoundedBorder27,
  RoundedBorder12,
}

enum IconButtonPadding {
  PaddingAll12,
  PaddingAll8,
  PaddingAll16,
}

enum IconButtonVariant {
  FillBlue100,
  FillGray50,
  FillWhiteA700,
  FillIndigo600,
  FillGray100,
  FillDeeporange500,
  FillTeal900,
  FillTeal300,
  FillGray900,
}
