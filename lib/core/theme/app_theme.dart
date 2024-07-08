import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  //variables
  static late Color primaryColor;
  static late Color secondaryColor;
  static late Color scaffoldBackgroundColor;

  static ThemeData get lightTheme {
    // colors
    primaryColor = const Color(0xff00A5BC);
    secondaryColor = const Color(0xffEBB376);
    scaffoldBackgroundColor = const Color(0xffFFFFFF);

    // theme light
    return ThemeData(
      fontFamily: "Ubuntu",
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      iconTheme: const IconThemeData(color: Colors.black),
      // color system
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        brightness: Brightness.light,
      ),
      // appbar
      appBarTheme: const AppBarTheme(
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      // textTheme
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.black),
        bodyMedium: TextStyle(color: Colors.black87),
        titleLarge: TextStyle(color: Colors.black, fontSize: 20),
      ),

      //input decoration
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: const TextStyle(fontSize: 15),
        floatingLabelStyle: const TextStyle(fontSize: 15),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffF0F0F0), width: 1),
          borderRadius: BorderRadius.circular(6),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffF0F0F0), width: 1),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffF0F0F0), width: 1),
          borderRadius: BorderRadius.circular(6),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffF0F0F0), width: 1),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xffF0F0F0), width: 1),
          borderRadius: BorderRadius.circular(6),
        ),
      ),

      //elecation ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(100, 40),
          backgroundColor: Colors.white.withOpacity(0.4),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.r),
          ),
        ),
      ),
    );
  }
}
