import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class ColorUtils {

  static Color accentColor = Color(UtilColors.hexToInt("EA3C78"));
  static Color primaryColor = Color(UtilColors.hexToInt("f0a31f"));

  static Color greyColor = Color(UtilColors.hexToInt("707070"));
  static Color lightGreyShimmerColor = Color(UtilColors.hexToInt("F0F0F0"));

  static get primarySwatchColor => null;
  static Color appBarColor = Color(UtilColors.hexToInt("FAFAFA"));
  static Color whiteColor = Color(UtilColors.hexToInt("FFFFFF"));
  static Color bottomAppBarDarkColor = Color(UtilColors.hexToInt("070707"));
  static Color backgroundColorDark = Color(UtilColors.hexToInt("191919"));
  static Color iconGreyColor = Color(UtilColors.hexToInt("909090"));
  static Color cardDarkColor = Color(UtilColors.hexToInt("212121"));

  /*subtitle Text Color*/
  static Color defaultTextColor = Color(UtilColors.hexToInt('5F7B93'));
  static Color darkTitleTextColor = Color(UtilColors.hexToInt('2D4B64'));
  static Color defaultFilterTextColor = Color(UtilColors.hexToInt('188efc'));
  static Color activeThemeColor = Color(UtilColors.hexToInt('188efc'));
  static Color inactiveThemeColor = Color(UtilColors.hexToInt('d3dae1'));
  static Color iconBackgroundColor = Color(UtilColors.hexToInt('E2E7F1'));
  static Color borderColor = Color(UtilColors.hexToInt('eceff0'));

  static Color leftChatBubble = Color.fromRGBO(73, 122, 122, 1.0);
  static Color rightChatBubble = Color.fromRGBO(100, 100, 100, 1.0);

  static Color buttonSelectedColor = Color(UtilColors.hexToInt("DFDFDF"));
  static Color buttonNonSelectedColor = Color(UtilColors.hexToInt("EFEFEF"));
  static Color textSelectedColor = Color(0xfFF313131);
  static Color textNonSelectedColor = Color(0xfFFDDDBDB);
  static Color buttonDisabledBackgroundColor = Color(0xffFFB4CE);
  /*appbar icon color*/
  static Color appbarIconColor = Color(UtilColors.hexToInt("909090"));

  /* black color */
  static Color blackColor = Color(UtilColors.hexToInt("000000"));
  static Color hintTextColor = Color(UtilColors.hexToInt("A3A3A3"));

  /* red color (primary color) */
  static Color redColor = Color(UtilColors.hexToInt("EC3832"));

  static Color pinkColor = Color(UtilColors.hexToInt("EA3C78"));

  /* dark grey color */
  static Color darkGreyIconColor = Color(UtilColors.hexToInt("909090"));
  // static Color darkGreyColor = Color(UtilColors.hexToInt("909090"));

  /*subtitle Text Color*/
  static Color subtitleTextColor = Color(UtilColors.hexToInt("b3b6bd"));
  static Color dividerColor = Color(UtilColors.hexToInt("E0E0E0"));

  /* dialog blue color */
  static Color dialogBlueColor = Color(UtilColors.hexToInt("3F6EB5"));
  static Color articleWebViewIconColor = Color(UtilColors.hexToInt("707070"));

  /* upload screen ->'images','text','videos','articles' & filters background color when selected. */
  static Color buttonSelectedBgColor = Color(UtilColors.hexToInt("EFEFEF"));

  static Color textDetailScreenColor = Color(UtilColors.hexToInt("A5A5A5"));
  static Color iconDetailScreenColor = Color(UtilColors.hexToInt("A5A5A5"));
  static Color iconColors = Color(UtilColors.hexToInt("c8c8c8"));
  static Color articleBgColor = Color(UtilColors.hexToInt("FEEBF1"));
  //static Color articleTextColor = Color(UtilColors.hexToInt("707070"));
  static Color articleTextColor = Color(UtilColors.hexToInt("FFFFFF"));

  static Color splashColor = Colors.red[50];
  static Color userPicBgColor = Color(UtilColors.hexToInt("DBDBDB"));



  /*login page*/
  static Color continueWithGoogleColor = Color(UtilColors.hexToInt("4286F5"));
  static Color continueWithFacebookColor = Color(UtilColors.hexToInt("4267B2"));

  static Color buttonNonSelectedBgColor = Color(UtilColors.hexToInt("F3F3F3"));

  /* like icon selected color */
  static Color likeIconSelectedColor = Color(UtilColors.hexToInt("3477E5"));

  /* fav icon selected color*/
  static Color favIconSelectedColor = Color(UtilColors.hexToInt("EE545B"));

  /* share icon color */
  static Color shareIconColor = Color(UtilColors.hexToInt("6394B4"));

  /* write a comment bg color */

  static Color writeACommentBgColor = Color(UtilColors.hexToInt("F0F1F3"));

  /*comment*/
  static Color CommentCounterColor = Color(UtilColors.hexToInt("707070"));

  static Color lightGreyColor = Color(UtilColors.hexToInt("ADADAD"));

  /*Toast Color*/
  static Color toastBackgroundColor = Color(UtilColors.hexToInt("CC5F5F5F"));
  static Color toastBackgroundColorDarkTheme = Color(UtilColors.hexToInt("CC454545"));

  /* New Feed text color */
  static Color newFeedTextColor = Color(UtilColors.hexToInt("505050"));


  // THEME COLORS - Parent

  static Color themeParentLight = Color(UtilColors.hexToInt("ffffff"));
  static Color themeParentDim = Color(UtilColors.hexToInt("18202a"));
  static Color themeParentDark = Color(UtilColors.hexToInt("000000"));

  // THEME COLORS - Child
  static Color themeChildColorSkyBlue = Color(UtilColors.hexToInt("4c9eeb"));
  static Color themeChildColorDarkYellow = Color(UtilColors.hexToInt("f3b045"));
  static Color themeChildColorFlowerRed = Color(UtilColors.hexToInt("ce3a5f"));
  static Color themeChildColorOctopusViolet = Color(UtilColors.hexToInt("704bba"));
  static Color themeChildColorFireOrange = Color(UtilColors.hexToInt("e26737"));
  static Color themeChildColorGuavaGreen = Color(UtilColors.hexToInt("5abc6e"));

  // Random Color Generator - Munish Code - Start
  final List<Color> circleColors = [
    Color(0xfFFedb7b7),
    Color(0xfFFffe0fb),
    Color(0xfFFff6f61),
    Color(0xfFFfffebb),
    Color(0xfFFff0080),
    Color(0xfFF65af44),
    Color(0xfFFc7afd0),
    Color(0xfFFcccccc),
    Color(0xfFF0cc375),
    Color(0xfFF00C5CD),
    Color(0xfFF00FFCC),
    Color(0xfFF20B2AA),
    Color(0xfFF8E236B),
    Color(0xfFFBFEFFF),
    Color(0xfFFC0D9D9),
    Color(0xfFFC77826),
    Color(0xfFFCAE1FF),
    Color(0xfFFE6E8FA),
    Color(0xfFFEAB5C5),
  ];

  final List<Color> genreColors = [
    Color(0xfFFef4746),
    Color(0xfFF435849),
    Color(0xfFFffc803),
    Color(0xfFF867c71),
    Color(0xfFFd3ccc5),
    Color(0xfFFd8c493),
    Color(0xfFFb5b0b0),
    Color(0xfFFbda4a3),
    Color(0xfFF272621),
    Color(0xfFF7c7e70),
    Color(0xfFFa8c1c5),
    Color(0xfFF363636),
    Color(0xfFF262c3a),
    Color(0xfFFd2c1a2),
    Color(0xfFF97958b),
    Color(0xfFFae5c46),
    Color(0xfFF90757a),
    Color(0xfFF214948),
    Color(0xfFFd3cdbd),
    Color(0xfFFe5a5ad),
    Color(0xfFFbebab8),
    Color(0xfFFeea3bd),
    Color(0xfFF78795e),
    Color(0xfFF8f432e),
    Color(0xfFF623722),
    Color(0xfFFd98f70),
    Color(0xfFFf9c01b),
    Color(0xfFFcec34f),
    Color(0xfFF5d7d49),
    Color(0xfFFbbb9b6),
    Color(0xfFF9d735e),
    Color(0xfFFb38a74),
    Color(0xfFFbfada9),
    Color(0xfFF847151),
    Color(0xfFFc1b9b2),
    Color(0xfFFcdb49e),
    Color(0xfFF263f55),
    Color(0xfFFb8c7ce),
    Color(0xfFF9e8556),
    Color(0xfFF767b74),
    Color(0xfFFa6b0b1),
    Color(0xfFF364648),
    Color(0xfFF5d4610),
    Color(0xfFFafaca2),
    Color(0xfFF5c5c5c),
    Color(0xfFFe2c4ce),
    Color(0xfFFebb7a1),
    Color(0xfFF3d768a),
    Color(0xfFFfe83a6),
    Color(0xfFFaa7b8b),
    Color(0xfFFdbc3b4),
    Color(0xfFFcfa894),
    Color(0xfFF9a6a44),
    Color(0xfFFdac4a9),
    Color(0xfFFc2c2c2),
    Color(0xfFF362608),
    Color(0xfFFbdb0a5),
    Color(0xfFF06a9b4),
    Color(0xfFFd2cdd5),
    Color(0xfFF84c9d8),
    Color(0xfFF7ab973),
    Color(0xfFFbe8f97),
    Color(0xfFF919191),
    Color(0xfFFd0c9d2),
    Color(0xfFF806f57),
    Color(0xfFF6b6961),
    Color(0xfFFb2988e),
    Color(0xfFFc2c3b8),
    Color(0xfFF2d212b),
    Color(0xfFF858181),
    Color(0xfFFb0a8a8),
    Color(0xfFFdea586),
    Color(0xfFF8a7665),
    Color(0xfFFffaec9),
    Color(0xfFFc0a834),
    Color(0xfFF192c3d),
  ];

  final List<Color> shimmerLoadingColors = [
    Color(0xfFFE0E0E0),
    Color(0xfFFE0E0E0),
    Color(0xfFFEAF1F1),
    Color(0xfFFEAEDEA),
    Color(0xfFFE2E9E9),
    Color(0xfFFd0c9d2),
    Color(0xfFFd3cdbd),
    Color(0xfFFE8E6E9),
    Color(0xfFFE3E9E9),
    Color(0xfFFE0E0E0),
    Color(0xfFFc1b9b2),
    Color(0xfFFDADADA),
    Color(0xfFFE1E1E1),
    Color(0xfFFd0c9d2),
    Color(0xfFFEAEDEA),
    Color(0xfFFEAF1F1),
    Color(0xfFFd3cdbd),
    Color(0xfFFd8c493),
    Color(0xfFFE1E1E1),
    Color(0xfFFb5b0b0)
  ];

  Color randomGenerator() {
    return circleColors[new Random().nextInt(max(0, 19))];
  }

  Color randomGeneratorByIndex(int index) {
    int indexOfColor = _getColorIndex(index);
    return circleColors[indexOfColor];
  }


  int _getColorIndex(int index) {
    int indexOfColor = 0;
    if(index > (circleColors.length - 1)) {
      indexOfColor = (index % (circleColors.length - 1));
    } else {
      indexOfColor = index;
    }

    return indexOfColor;
  }

  Color randomGenreColorByIndex(int index) {
    int indexOfColor = _getGenreColorIndex(index);
    return genreColors[indexOfColor];
  }


  int _getGenreColorIndex(int index) {
    int indexOfColor = 0;
    if(index > (genreColors.length - 1)) {
      indexOfColor = (index % (genreColors.length - 1));
    } else {
      indexOfColor = index;
    }

    return indexOfColor;
  }

  Color randomShimmerLoadingColorGeneratorByIndex(int index) {
    int indexOfColor = _getShimmerLoadingColorIndex(index);
    return shimmerLoadingColors[indexOfColor];
  }

  int _getShimmerLoadingColorIndex(int index) {
    int indexOfColor = 0;
    if(index > (shimmerLoadingColors.length - 1)) {
      indexOfColor = (index % (shimmerLoadingColors.length - 1));
    } else {
      indexOfColor = index;
    }

    return indexOfColor;
  }

// Random Color Generator - Munish Code - END

}

class UtilColors {
  static int hexToInt(String hex) {
    if(hex == null) {
      return -1;
    }
    
    if(hex.length == 6) {
      hex = "FF$hex";
    }
    
    int val = 0;
    int len = hex.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = hex.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("Invalid hexadecimal value");
      }
    }
    return val;
  }
}