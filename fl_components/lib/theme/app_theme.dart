

import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.indigoAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Primary color
    primaryColor: Colors.indigoAccent,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
        color: Colors.indigoAccent,
        elevation: 0
    ),

    // TextButtom Theme
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            primary: primary
        )
    ),

    // FloatingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),

    // ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0
      )
    ),

    // Inputs
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),

      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),

      border: OutlineInputBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),

    )


  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Primary color
    primaryColor: Colors.indigoAccent,

    // AppBar Theme
    appBarTheme: const AppBarTheme(
        color: Colors.indigoAccent,
        elevation: 0
    ),

    // Scaffold
    scaffoldBackgroundColor: Colors.black

  );


}