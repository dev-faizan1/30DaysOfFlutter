// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData get lightTheme => ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        titleTextStyle: TextStyle(color: Colors.black),
      ),
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily);

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
      );
}
