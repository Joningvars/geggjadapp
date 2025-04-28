import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData.light().copyWith(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
  ),
  scaffoldBackgroundColor: Colors.grey[200],
  colorScheme: const ColorScheme.light().copyWith(
    primary: Colors.black,
    secondary: Colors.grey[200],
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.black),
  ),
  cardColor: Colors.white,
  iconTheme: const IconThemeData(color: Colors.black),
);
