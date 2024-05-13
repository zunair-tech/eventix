import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5000 = fromHex('#00fff9fc'); //jakrta finish

  static Color gray60099 = fromHex('#99797979'); // Jakrta finish

  static Color gray5001 = fromHex('#587C9D'); // Evnto splash screen fisnish

  static Color gray5002 = fromHex('#ffffff'); // background finish

  static Color gray50 = fromHex('#F9672C'); // evnto logo splash finish

  static Color red50 = fromHex('#ffffff'); // background finish

  static Color teal300 = fromHex('#549fcc'); // +999 and footer icons finish

  static Color whiteA70099 = fromHex('#99ffffff'); //no

  static Color indigo60099 = fromHex('#9929699a'); //np

  static Color black90000 = fromHex('#00000000'); //img finish

  static Color black900 = fromHex('#000000'); // img finish

  static Color teal900 = fromHex('#F9672C'); //btns finish

  static Color deepOrange500 = fromHex('#F9672C'); // not useful

  static Color teal90099 = fromHex('#99022e57'); // currency finish

  static Color deepOrange100 = fromHex('#F9672C'); // no

  static Color deepOrange1007e = fromHex('#F9672C'); // no

  static Color gray600 = fromHex('#797979'); //text finish

  static Color teal9007e = fromHex('#7e022e57'); //no

  static Color gray400 = fromHex('#bcbcbc'); // input and some text finish

  static Color gray900 =
      fromHex('#212121'); // sign with google and some txt finish

  static Color gray200 = fromHex('#e8e8e8'); // boarder finish

  static Color gray100 = fromHex('#f3f3f3'); //no

  static Color whiteA70000 = fromHex('#00ffffff'); //no

  static Color blue20099 = fromHex('#022E57'); //no

  static Color teal90063 = fromHex('#63022e57'); //no

  static Color whiteA70001 = fromHex('#fffdfd'); // not useful

  static Color blue100 =
      fromHex('#c6e9f6'); // colors of images inside icons finish

  static Color blue200 = fromHex('#91cfee'); // not useful

  static Color whiteA700 = fromHex('#ffffff'); //background of containers finish

  static Color indigo600 = fromHex('#022E57'); // splash backgorund finish

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
