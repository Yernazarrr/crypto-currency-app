import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  primarySwatch: Colors.yellow,
  scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
  appBarTheme: const AppBarTheme(
    elevation: 0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    backgroundColor: Color.fromARGB(255, 31, 31, 31),
  ),
  dividerColor: Colors.white24,
  listTileTheme: const ListTileThemeData(
    iconColor: Colors.white,
  ),
  textTheme: TextTheme(
    bodyMedium: const TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    labelSmall: TextStyle(
      color: Colors.white.withOpacity(0.6),
      fontWeight: FontWeight.w500,
      fontSize: 14,
    ),
  ),
);
