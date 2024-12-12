


import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class AppTheme{
  static Color green=Color(0xff24db76);
  static Color red=Color(0xfff4145c);//
  static Color chosen=Color(0xff111328);//111328
  static Color lightblack=Color(0xff1d1e33);
  static Color white=Color(0xfff8f8f9);
  static Color bg=Color(0xff0a0e20);
  //454651
  static Color txtgre=Color(0xff454651);
  static Color grey=Color(0xff4c4f5e);
  static ThemeData lightTheme=

  ThemeData(
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: white
      ),
        headlineLarge: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.w600,
            color: white
        ),
        headlineSmall: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: grey
        )
    ),
  scaffoldBackgroundColor: bg,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.transparent,
    titleTextStyle: TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      color: Colors.white
    )
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: red,
      textStyle: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: white
      ),
      foregroundColor: Colors.white,
      fixedSize: Size(double.infinity, 52),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0)
      )
    )
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: grey,
    foregroundColor: white,
    shape: CircleBorder(),
    iconSize: 20.0
  )
  );
}