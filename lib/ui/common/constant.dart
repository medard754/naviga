import 'package:flutter/material.dart';

//dimension
 double kButtonHeight = 50.0;
 double kScreenPadding = 15;
 double kMusicTileHeight = 100.0;
 double kMusicTileWidth = 110.0;
 double kPlayerRowHeight = 50.0;
 double kBottomAppBarHeight = 50;
 

 //FontSize
 double kMusicTitleFontSize = 15;
 double kArtistNameFontSize = 13; 
const defaultRadius = 12.0;
const defaultPadding = 10.0;



//Colors
const Color kBlackColor = Color(0xff1B2324);
const Color kPurpleColor = Color(0xff5500A3);
Color primaryColor = HexColor("#1B2324");
Color secondaryColor = HexColor("#5500A3");

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
class Couleur {
  static Color primaryColor = HexColor("#1B2324");
  static Color color = HexColor("#5500A3");

}