import 'package:flutter/material.dart';
import 'package:Eventix/core/app_export.dart';
import 'package:Eventix/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarIconbutton extends StatelessWidget {
  AppbarIconbutton(
      {this.imagePath,
      this.svgPath,
      this.rotateifRtl = false,
      this.margin,
      this.onTap});

  String? imagePath;

  String? svgPath;
  bool rotateifRtl;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 40,
          width: 40,
          variant: IconButtonVariant.FillWhiteA700,
          shape: IconButtonShape.RoundedBorder12,
          padding: IconButtonPadding.PaddingAll8,
          child: CustomImageView(
            svgPath: svgPath,
            rotateifRtl: rotateifRtl,
            imagePath: imagePath,
          ),
        ),
      ),
    );
  }
}
