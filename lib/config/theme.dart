import 'package:flutter/material.dart';
import 'package:fuseerp/utils/app_colors.dart';
// import 'utils';


class ThemeClass{

  static ThemeData lightThemeData = ThemeData(

    textTheme: const TextTheme(
      displayLarge: TextStyle(fontFamily: "Mulish", fontWeight: FontWeight.w700, color: textColor1, fontSize: 14),
      labelSmall: TextStyle(fontFamily: "Mulish", fontWeight: FontWeight.w500, color: textColor3, fontSize: 11),
      labelLarge: TextStyle(fontFamily: "Mulish", fontWeight: FontWeight.w500, color: textColor2, fontSize: 14),
      bodyLarge: TextStyle(fontFamily: "Mulish", fontWeight: FontWeight.w800, color: primaryColor2, fontSize: 16),
      bodySmall: TextStyle(fontFamily: "Mulish", fontWeight: FontWeight.w400, color: textColor3, fontSize: 12),
      titleSmall: TextStyle(fontFamily: "Mulish", fontWeight: FontWeight.w600, color: textColor3, fontSize: 10)
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: whiteColor,
      actionsIconTheme: IconThemeData(color: blackColor),
      elevation: 1,
      shadowColor: Color(0xFF2563EB1A),
      titleTextStyle: TextStyle(fontFamily: "Mulish", fontWeight: FontWeight.w700, color: textColor1, fontSize: 14)
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(48), 
        backgroundColor: primaryColor1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
        ),
        textStyle: const TextStyle(fontFamily: "Mulish", fontWeight: FontWeight.w700, color: whiteColor, fontSize: 14),
      )
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
        ),
        side: const BorderSide(color: primaryColor2, ),
        foregroundColor: primaryColor2,
        textStyle: const TextStyle(fontFamily: "Mulish", fontWeight: FontWeight.w500, color: primaryColor2, fontSize: 12),
      )
    ),
    scaffoldBackgroundColor: backgroundColor
  );


  static ThemeData darkThemeData = ThemeData();
}
