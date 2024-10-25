import 'package:flutter/material.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
  scaffoldBackgroundColor: const Color(0xffE0E0E0),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xffE0E0E0),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      textStyle: const TextStyle(color: Colors.black),
      surfaceTintColor: Colors.redAccent,
    ),
  ),
);
