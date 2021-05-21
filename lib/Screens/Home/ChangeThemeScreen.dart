import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobilecafe/Localization/AppLanguageProvider.dart';
import 'package:mobilecafe/Localization/AppLanguageUtils.dart';
import 'package:mobilecafe/Provider/ThemeProvider.dart';
import 'package:mobilecafe/Screens/CustomWidgets/CustomText.dart';
import 'package:mobilecafe/Screens/CustomWidgets/CustomWidget.dart';
import 'package:mobilecafe/Utils/AppEnums.dart';
import 'package:mobilecafe/Utils/ColorUtils.dart';

class ChangeThemeScreen extends StatefulHookWidget {
  @override
  _ChangeThemeScreenState createState() => _ChangeThemeScreenState();
}

class _ChangeThemeScreenState extends State<ChangeThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Center(
        child: Card(
          child: Container(
            child: _getMainUI(),
          ),
        ),
      ),
    );
  }

  Widget _getMainUI() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText.heading18Bold(
              context, AppLanguageUtils.getLocalization(context).language),
          SizedBox(
            height: 26,
          ),
          _getChangeAppThemeFont(),
          SizedBox(
            height: 26,
          ),
          _getChangeLanguageButtons(),
          SizedBox(
            height: 26,
          ),
          _getThemeParentChangeButtons(),
          SizedBox(
            height: 26,
          ),
          _getThemeChildColorChangeButtons(),
        ],
      ),
    );
  }

  Widget _getChangeAppThemeFont() {
    var _listOfFontEnums = EnumAppThemeFonts.values;
    var _listWidget = ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return getFontChangeButton(_listOfFontEnums[index]);
      },
      itemCount: _listOfFontEnums.length,
    );

    return Container(
      height: 150.0,
      child: _listWidget,
    );
  }

  Widget getFontChangeButton(EnumAppThemeFonts _enumFont) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(4.0),
        child: OutlinedButton(
            child: CustomText.heading16Bold(context, _enumFont.toString()),
            onPressed: () {
              ThemeProvider.changeAppThemeFontRead(context, _enumFont);
            }),
      ),
    );
  }

  Widget _getChangeLanguageButtons() {
    return Row(
      children: [
        getLanguageChangeButton('English', 'en'),
        getLanguageChangeButton('Arabic', 'ar'),
        getLanguageChangeButton('Hindi', 'hi'),
      ],
    );
  }

  Widget getLanguageChangeButton(String language, String languageCode) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(4.0),
        child: OutlinedButton(
            child: CustomText.heading16Bold(context, language),
            onPressed: () {
              AppLanguageProvider.changeAppLanguageRead(context, languageCode);
            }),
      ),
    );
  }

  Widget _getThemeParentChangeButtons() {
    return Container(
      height: 120.0,
      child: Row(
        children: [
          _getThemeParentChangeButton(
              ColorUtils.themeParentLight, EnumAppThemeParentBackground.LIGHT),
          _getThemeParentChangeButton(
              ColorUtils.themeParentDim, EnumAppThemeParentBackground.DIM),
          _getThemeParentChangeButton(
              ColorUtils.themeParentDark, EnumAppThemeParentBackground.DARK),
        ],
      ),
    );
  }

  Widget _getThemeParentChangeButton(
      Color _color, EnumAppThemeParentBackground _changeAppTheme) {
    return InkWell(
      splashColor: _color.withOpacity(0.6),
      onTap: () {
        ThemeProvider.changeAppThemeParentRead(context, _changeAppTheme);
      },
      child: Expanded(
        child: Container(
          color: _color,
          width: 100.0,
          height: 60.0,
          padding: EdgeInsets.all(8.0),
        ),
      ),
    );
  }

  Widget _getThemeChildColorChangeButtons() {
    return Container(
      height: 80.0,
      child: Row(
        children: [
          _getThemeChildColorChangeButton(ColorUtils.themeChildColorSkyBlue,
              EnumAppThemeChildColor.SKY_BLUE),
          _getThemeChildColorChangeButton(ColorUtils.themeChildColorDarkYellow,
              EnumAppThemeChildColor.DARK_YELLOW),
          _getThemeChildColorChangeButton(ColorUtils.themeChildColorFlowerRed,
              EnumAppThemeChildColor.FLOWER_RED),
          _getThemeChildColorChangeButton(
              ColorUtils.themeChildColorOctopusViolet,
              EnumAppThemeChildColor.OCTOPUS_VIOLET),
          _getThemeChildColorChangeButton(ColorUtils.themeChildColorFireOrange,
              EnumAppThemeChildColor.FIRE_ORANGE),
          _getThemeChildColorChangeButton(ColorUtils.themeChildColorGuavaGreen,
              EnumAppThemeChildColor.GUAVA_GREEN),
        ],
      ),
    );
  }

  Widget _getThemeChildColorChangeButton(
      Color _color, EnumAppThemeChildColor _changeColor) {
    return InkWell(
      splashColor: _color.withOpacity(0.6),
      hoverColor: _color.withOpacity(0.6),
      onTap: () {
        ThemeProvider.changeAppThemeChildColorRead(context, _changeColor);
      },
      child: Expanded(
        flex: 1,
        child: Container(
          color: _color,
          width: 50.0,
          height: 60.0,
          padding: EdgeInsets.all(4.0),
        ),
      ),
    );
  }
}
