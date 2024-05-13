import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

//ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        getHorizontalSize(width ?? 0),
        getVerticalSize(height ?? 0),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      case ButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case ButtonPadding.PaddingT7:
        return getPadding(
          top: 7,
          right: 7,
          bottom: 7,
        );
      case ButtonPadding.PaddingT11:
        return getPadding(
          left: 11,
          top: 11,
          bottom: 11,
        );
      default:
        return getPadding(
          all: 15,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillBlue100:
        return ColorConstant.blue100;
      case ButtonVariant.FillTeal300:
        return ColorConstant.teal300;
      case ButtonVariant.FillGray100:
        return ColorConstant.gray100;
      case ButtonVariant.FillDeeporange500:
        return ColorConstant.deepOrange500;
      case ButtonVariant.FillGray5002:
        return ColorConstant.gray5002;
      case ButtonVariant.OutlineGray200:
        return null;
      default:
        return ColorConstant.teal900;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray200:
        return BorderSide(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case ButtonShape.CustomBorderTL16:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
        );
      case ButtonShape.CustomBorderBL16:
        return BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              0.00,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
          bottomLeft: Radius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
          bottomRight: Radius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
        );
      case ButtonShape.CircleBorder24:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
      case ButtonShape.CircleBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.OutfitMedium18Teal900:
        return TextStyle(
          color: ColorConstant.teal900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.OutfitMedium16:
        return TextStyle(
          color: ColorConstant.teal900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.OutfitLight14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w300,
        );
      case ButtonFontStyle.OutfitLight14Gray600:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w300,
        );
      case ButtonFontStyle.OutfitMedium16Gray400:
        return TextStyle(
          color: ColorConstant.gray400,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.OutfitLight18:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w300,
        );
      case ButtonFontStyle.OutfitLight12:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w300,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder28,
  CircleBorder16,
  CustomBorderTL16,
  CustomBorderBL16,
  CircleBorder24,
  CircleBorder12,
}

enum ButtonPadding {
  PaddingAll15,
  PaddingAll5,
  PaddingAll11,
  PaddingT7,
  PaddingT11,
}

enum ButtonVariant {
  FillTeal900,
  FillBlue100,
  FillTeal300,
  FillGray100,
  FillDeeporange500,
  OutlineGray200,
  FillGray5002,
}

enum ButtonFontStyle {
  OutfitMedium18,
  OutfitMedium18Teal900,
  OutfitMedium16,
  OutfitLight14,
  OutfitLight14Gray600,
  OutfitMedium16Gray400,
  OutfitLight18,
  OutfitLight12,
}
