import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../core/app_export.dart';
//ignore: must_be_immutable
class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(20),
        width: getHorizontalSize(36),
        toggleSize: 10,
        borderRadius: getHorizontalSize(
          12.00,
        ),
        padding:5,
        activeColor: ColorConstant.blue100,
        inactiveSwitchBorder:Border.all(color: Colors.black),
        activeToggleColor: ColorConstant.whiteA700,
        inactiveColor: Colors.transparent,
        inactiveToggleColor: ColorConstant.black900,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
