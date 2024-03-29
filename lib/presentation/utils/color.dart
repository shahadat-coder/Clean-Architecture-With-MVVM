import 'package:flutter/material.dart';

class ColorManager{
  static Color primaryColor = HexColor.fromHex('#ED9728');
  static Color darkGreyColor = HexColor.fromHex('#525252');
  static Color greyColor = HexColor.fromHex('#737477');
  static Color lightGreyColor = HexColor.fromHex('#9E9E9E');
  static Color primaryOpacity70 = HexColor.fromHex('#B3ED9728');

  static Color darkPrimaryColor = HexColor.fromHex('#d17d11');
  static Color grey1 = HexColor.fromHex('#797979');
  static Color grey2 = HexColor.fromHex('#737477');
  static Color whiteColor = HexColor.fromHex('#FFFFFF');
  static Color errorColor = HexColor.fromHex('#e61f34');
}

extension HexColor on Color{
  static Color fromHex(String hexColorString){
    hexColorString = hexColorString.replaceAll('#', '');
    if(hexColorString.length == 6){
      hexColorString = "FF" +hexColorString; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString,radix: 16));
  }
}