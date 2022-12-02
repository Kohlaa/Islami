import 'package:flutter/material.dart';

class MyTheme{
  static Color blackColor= Color(0xFF242424);
  static Color whiteColor= Colors.white;
  static ThemeData lightTheme=ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
   textTheme: TextTheme(
     headline2: TextStyle(
       fontSize: 30,
       fontWeight: FontWeight.bold,
       color: blackColor,
     )
   )
  );
  static ThemeData darkTheme=ThemeData(

  );
}