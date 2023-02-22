import 'package:flutter/material.dart';
import 'package:samapp/utils/colors.dart';
import 'package:samapp/utils/util.dart';


class ThemeClass {
  static ThemeData lightTheme = ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: colorPrimary,
      brightness: Brightness.light,
      dividerColor: Colors.white54,
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      fontFamily: 'FiraSans',
      appBarTheme: AppBarTheme(
        backgroundColor: scaffoldBackgroundColor,
        foregroundColor: colorPrimary,
        actionsIconTheme: IconThemeData(color: Colors.white),
          iconTheme: IconThemeData(
              color: colorPrimary
          )
      ),
      textTheme: TextTheme(
          headline1: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(color: Colors.white, fontSize: 20.0,fontWeight: FontWeight.w500),
          headline3: TextStyle(color: Colors.black, fontSize: 16.0),
          headline4: TextStyle(color: Colors.black, fontSize: 12.0, fontWeight: FontWeight.w800),
          labelMedium: TextStyle(color: textPrimaryColor, fontSize: 14.0, fontWeight: FontWeight.bold)
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: scaffoldBackgroundColor,
        unselectedIconTheme: new IconThemeData(color: Colors.blueGrey),
        selectedIconTheme: new IconThemeData(
          color: colorPrimary,
        ),
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: colorPrimary,
      ),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: Colors.black54,
        labelColor: colorPrimary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorPrimary,
        foregroundColor: md_theme_light_background,
        hoverColor: md_theme_light_onTertiary,
        focusColor: md_theme_light_onTertiaryContainer,

      ),
      dividerTheme: DividerThemeData(
          color: md_theme_light_onTertiaryContainer
      ),
      cardTheme: CardTheme(
        color: md_theme_light_onPrimary,
        shadowColor: md_theme_light_tertiaryContainer,
        elevation: 1.0,
        shape: Utils.cardShapeRound(),
      ),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular( 50.0),
              borderSide: BorderSide(width: 0.7, color:  green2)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular( 50.0),
              borderSide: BorderSide(width: 0.8, color: gray3)
          )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: Utils.coloredButtonStyle(colorPrimary),
      ),
      iconTheme: IconThemeData(color: md_theme_light_onSurfaceVariant)
  );

  /* Dark theme settings */
  static ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.grey,
      primaryColor: colorPrimaryDark,
      brightness: Brightness.dark,
      dividerColor: Colors.black,
      scaffoldBackgroundColor: Colors.black,
      backgroundColor: colorPrimaryDark,
      fontFamily: 'FiraSans',
      appBarTheme: AppBarTheme(
        backgroundColor: secondaryPrimary,
        foregroundColor: secondaryPrimary,
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(
          color: Colors.white
        )
      ),
      textTheme: TextTheme(
          headline1: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(color: Colors.white, fontSize: 20.0,fontWeight: FontWeight.w500),
          headline3: TextStyle(color: Colors.white, fontSize: 15.0),
          headline4: TextStyle(color: Colors.white, fontSize: 12.0)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorPrimaryDark,
        unselectedIconTheme: new IconThemeData(color: Colors.blueGrey),
        selectedIconTheme: new IconThemeData(
          color: Colors.white,
        ),
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
      ),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: Colors.white70,
        labelColor: Colors.white,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorPrimary,
        foregroundColor: secondaryPrimary,
        hoverColor: md_theme_dark_onTertiary,
        focusColor: md_theme_dark_onTertiaryContainer,

      ),
      dividerTheme: DividerThemeData(
        color: md_theme_dark_onTertiaryContainer
      ),
      cardTheme: CardTheme(
        color: md_theme_dark_surface,
        shadowColor: md_theme_dark_tertiaryContainer,
        elevation: 1.0,
        shape: Utils.cardShapeRound(),
      ),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.black,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular( 50.0),
              borderSide: BorderSide(width: 1, color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular( 50.0),
              borderSide: BorderSide(width: 1, color: Colors.white)
          )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: Utils.coloredButtonStyle(colorPrimary),
      ),
      iconTheme: IconThemeData(color: Colors.white));
}