import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(fontFamily: GoogleFonts.lato().fontFamily),
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    ),
  );
}
