import 'dart:ui';

import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';

/// Application theme

const kLightSecondaryColor = Color(0xffdae1e7);
const kDarkSecondaryColor = Color(0xff01AC68);
const kLightPrimaryColor = Color(0xffdae1e7);
const kDarkPrimaryColor = Color(0xFF262626);
const kBackgroundLight = Color(0xffffffff);
const kBackgroundDark = Color(0xFF2A2A2A);
const kDividerLight = Color(0xFFFFFFFF);
const kDividerDark = Color(0xFF3D3D3D);
const kAccentColor = Color(0xff01AC68);
const kTextLighter = Color(0xFFFBFBFB);
const kTextDarker = Color(0xFF17262A);
const kTextDark = Color(0xFF3D3D3D);
const kTextLight = Color(0xFFEEEEEE);
const kDarkColor = Color(0xFF000000);
const kIconDark = Color(0xFF666666);
const kOrange = Color(0xff01AC68);
const kLight = Color(0xFFFDFDFD);
const kDark = Color(0xFF262626);
const kLinkC = Color(0xFF249ffd);

final circularIndicator = CircularProgressIndicator(
  valueColor: AlwaysStoppedAnimation<Color>(kDarkSecondaryColor),
);

double height =
    MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.height;
double width =
    MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.width;

ThemeData get darkTheme {
  final base = ThemeData.dark();
  return base.copyWith(
    accentColor: kAccentColor,
    brightness: Brightness.dark,
    canvasColor: kDarkPrimaryColor,
    primaryColor: kLight,
    primaryColorLight: kDark,
    buttonColor: kDarkSecondaryColor,
    backgroundColor: kDarkSecondaryColor,
    cardColor: kDark,
    dividerColor: kDividerLight,
    platform: TargetPlatform.linux,
    scaffoldBackgroundColor: kBackgroundDark,
    toggleableActiveColor: kAccentColor,
    primaryIconTheme: base.iconTheme.copyWith(color: kIconDark),
    buttonTheme: base.buttonTheme.copyWith(buttonColor: kDarkSecondaryColor),
    cardTheme: base.cardTheme.copyWith(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: kDividerLight,
      unselectedLabelColor: kTextDark,
      indicator: BubbleTabIndicator(
        indicatorHeight: 25.0,
        indicatorColor: kIconDark,
        tabBarIndicatorSize: TabBarIndicatorSize.tab,
      ),
    ),
    navigationRailTheme: NavigationRailThemeData(
        backgroundColor: kDividerDark,
        selectedIconTheme: IconThemeData(color: kAccentColor),
        unselectedIconTheme: IconThemeData(color: kLight),
        labelType: NavigationRailLabelType.all,
        selectedLabelTextStyle:
            base.textTheme.bodyText2!.copyWith(color: kAccentColor)),
    textTheme: _buildTextTheme(base.textTheme, kTextLight, kTextLighter),
    primaryTextTheme:
        _buildTextTheme(base.primaryTextTheme, kTextLight, kTextLighter),
    accentTextTheme:
        _buildTextTheme(base.accentTextTheme, kTextLight, kTextLighter),
    snackBarTheme: base.snackBarTheme.copyWith(
      backgroundColor: kDark,
      contentTextStyle: base.textTheme.bodyText1!.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        color: kTextLight,
      ),
    ),
    appBarTheme: base.appBarTheme.copyWith(
        brightness: Brightness.dark, color: kDividerDark, elevation: 0.0),
    iconTheme: base.iconTheme.copyWith(color: kAccentColor),
    dialogTheme: base.dialogTheme.copyWith(
      contentTextStyle: TextStyle(color: kDarkColor),
      backgroundColor: kDarkPrimaryColor,
    ),
  );
}

ThemeData get theme {
  final base = ThemeData.light();
  return base.copyWith(
    accentColor: kAccentColor,
    brightness: Brightness.light,
    buttonColor: kAccentColor,
    buttonTheme: base.buttonTheme.copyWith(buttonColor: kAccentColor),
    canvasColor: kLightPrimaryColor,
    primaryColor: kDark,
    cardColor: kDividerLight,
    primaryColorLight: kLightPrimaryColor,
    platform: TargetPlatform.linux,
    backgroundColor: kLightSecondaryColor,
    scaffoldBackgroundColor: kBackgroundLight,
    primaryIconTheme: base.iconTheme.copyWith(color: kIconDark),
    toggleableActiveColor: kOrange,
    tabBarTheme: TabBarTheme(
      labelColor: kDividerLight,
      unselectedLabelColor: kDarkColor,
      indicator: BubbleTabIndicator(
        indicatorHeight: 25.0,
        indicatorColor: kIconDark,
        tabBarIndicatorSize: TabBarIndicatorSize.tab,
      ),
    ),
    navigationRailTheme: NavigationRailThemeData(
        selectedIconTheme: IconThemeData(color: kAccentColor),
        labelType: NavigationRailLabelType.all,
        unselectedIconTheme: IconThemeData(color: kDarkColor),
        backgroundColor: kBackgroundLight,
        selectedLabelTextStyle:
            base.textTheme.bodyText2!.copyWith(color: kAccentColor)),
    cardTheme: base.cardTheme.copyWith(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    dialogTheme: base.dialogTheme.copyWith(
      contentTextStyle: TextStyle(color: kDarkColor),
    ),
    appBarTheme: base.appBarTheme.copyWith(
        brightness: Brightness.light, color: kBackgroundLight, elevation: 0.0),
    iconTheme: base.iconTheme.copyWith(color: kAccentColor),
    primaryTextTheme:
        _buildTextTheme(base.primaryTextTheme, kTextDark, kTextDarker),
    accentTextTheme:
        _buildTextTheme(base.accentTextTheme, kTextDark, kTextDarker),
    textTheme: _buildTextTheme(base.textTheme, kTextDark, kTextDark),
    snackBarTheme: base.snackBarTheme.copyWith(
      backgroundColor: kLight,
      contentTextStyle: base.textTheme.bodyText1!.copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        color: kTextDark,
      ),
    ),
  );
}

TextTheme _buildTextTheme(TextTheme base, Color displayColor, Color bodyColor) {
  return base
      .copyWith(
        headline5: base.headline5!.copyWith(
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          fontSize: 20,
        ),
        headline6: base.headline6!.copyWith(
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
          fontSize: 20,
        ),
        bodyText1: base.bodyText1!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
        subtitle1: base.bodyText1!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
          fontFamily: 'Amiri',
          displayColor: displayColor,
          bodyColor: bodyColor);
}
