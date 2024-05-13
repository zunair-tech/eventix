import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';

//ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.onFieldSubmitted,
      this.suffixConstraints,
      this.validator});

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;
  void Function(String)? onFieldSubmitted;
  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        onFieldSubmitted: onFieldSubmitted,
        style: TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w400,
        ),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: OutlineInputBorder(
        borderRadius: _setOutlineBorderRadius(),
        borderSide: BorderSide(
          color: ColorConstant.teal300,
          width: 1,
        ),
      ),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.OutfitLight18Gray400:
        return TextStyle(
          color: ColorConstant.gray400,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w300,
        );
      case TextFormFieldFontStyle.OutfitLight16:
        return TextStyle(
          color: ColorConstant.gray600,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w300,
        );
      case TextFormFieldFontStyle.OutfitRegular14:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w300,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.CircleBorder28:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
      case TextFormFieldShape.RoundedBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            24.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineTeal300:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.teal300,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillGray100:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillWhiteA700:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray200,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.FillGray100:
        return ColorConstant.gray100;
      case TextFormFieldVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      default:
        return null;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineGray200:
        return false;
      case TextFormFieldVariant.OutlineTeal300:
        return false;
      case TextFormFieldVariant.FillGray100:
        return true;
      case TextFormFieldVariant.FillWhiteA700:
        return true;
      case TextFormFieldVariant.None:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT11:
        return getPadding(
          top: 11,
          right: 11,
          bottom: 11,
        );
      case TextFormFieldPadding.PaddingT11_1:
        return getPadding(
          left: 11,
          top: 11,
          bottom: 11,
        );
      case TextFormFieldPadding.PaddingT11_2:
        return getPadding(
          top: 11,
          bottom: 11,
        );
      case TextFormFieldPadding.PaddingT15:
        return getPadding(
          left: 15,
          top: 15,
          bottom: 15,
        );
      case TextFormFieldPadding.PaddingT18:
        return getPadding(
          top: 18,
          bottom: 18,
        );
      default:
        return getPadding(
          all: 11,
        );
    }
  }
}

enum TextFormFieldShape {
  CircleBorder24,
  CircleBorder28,
  RoundedBorder12,
}

enum TextFormFieldPadding {
  PaddingT11,
  PaddingAll11,
  PaddingT11_1,
  PaddingT11_2,
  PaddingT15,
  PaddingT18,
}

enum TextFormFieldVariant {
  None,
  OutlineGray200,
  OutlineTeal300,
  FillGray100,
  FillWhiteA700,
}

enum TextFormFieldFontStyle {
  OutfitLight18,
  OutfitLight18Gray400,
  OutfitLight16,
  OutfitRegular14,
}
