import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightData = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    inputDecorationTheme: InputDecorationThemeData(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 8),
    ),
    listTileTheme: ListTileThemeData(horizontalTitleGap: 4),
  );
}
