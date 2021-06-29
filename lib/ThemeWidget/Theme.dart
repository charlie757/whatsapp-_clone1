import 'package:flutter/material.dart';

class mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.black),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        appBarTheme: AppBarTheme(color: Colors.deepPurple),
        dividerTheme: DividerThemeData(color: Colors.black),
      );
  // static Color creamColor = Color(0xfff5f5f5);

  // static Color blueColor = Color(0xfff548);

  // static ThemeData themeData() => ThemeData();
}
