import 'package:flutter/material.dart';

ThemeData darkmode = ThemeData.dark().copyWith(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.black,
  colorScheme: const ColorScheme.dark().copyWith(
    primary: Colors.white,
    secondary: Colors.grey[800],
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(color: Colors.white),
    bodyMedium: TextStyle(color: Colors.white),
  ),
  cardColor: Colors.grey[800],
  iconTheme: const IconThemeData(color: Colors.white),
);
