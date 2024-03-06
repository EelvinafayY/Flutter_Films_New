import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  iconButtonTheme: const IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStatePropertyAll(Colors.white),
      backgroundColor: MaterialStatePropertyAll(Color(0xffed6b5b)),
      ),
  ),
  cardTheme: const CardTheme(color: Color(0xffed6b5b),),
  scaffoldBackgroundColor: const Color(0xff302e43),
  appBarTheme: const AppBarTheme(
    //centerTitle: true,
    backgroundColor: Color(0xff302e43),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xff302e43),
    selectedLabelStyle: TextStyle(color: Colors.blue),
  ),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStatePropertyAll(
        TextStyle(color: Colors.white),
      ),
      backgroundColor: MaterialStatePropertyAll(Color(0xffF9AC68)),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    ),
  ),
  outlinedButtonTheme: const OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(Color(0xffed6b5b)),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    ),
  ),
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          decoration: TextDecoration.underline,
          color: Color(0xffed6b5b),
        ),
      ),
      foregroundColor: MaterialStatePropertyAll(Color(0xffed6b5b)),
    ),
  ),
);