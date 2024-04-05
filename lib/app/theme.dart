import 'package:flutter/material.dart';

// Material 3 GitHub Light Theme
ThemeData gitHubLightTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFFFFFFF),
    foregroundColor: Color(0xFF24292E),
    iconTheme: IconThemeData(
      color: Color(0xFF24292E),
    ),
  ),
  scaffoldBackgroundColor: const Color(0xFFFFFFFF),
  canvasColor: const Color(0xFFFFFFFF),
  cardColor: const Color(0xFFFFFFFF),
  dividerColor: const Color(0xFFE1E4E8),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF24292E),
    secondary: Color(0xFF0366D6),
    background: Color(0xFFFFFFFF),
    surface: Color(0xFFFFFFFF),
    error: Color(0xFFD73A49),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFFFFFFFF),
    onBackground: Color(0xFF24292E),
    onSurface: Color(0xFF24292E),
    onError: Color(0xFFFFFFFF),
  ).copyWith(background: const Color(0xFFFFFFFF)),
);

// Material 3 GitHub Dark Theme
ThemeData gitHubDarkTheme = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF161B22),
    foregroundColor: Color(0xFFFFFFFF),
    iconTheme: IconThemeData(
      color: Color(0xFFFFFFFF),
    ),
  ),
  scaffoldBackgroundColor: const Color(0xFF0D1117),
  canvasColor: const Color(0xFF0D1117),
  cardColor: const Color(0xFF161B22),
  dividerColor: const Color(0xFF30363D),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF24292E),
    secondary: Color(0xFF0366D6),
    background: Color(0xFF0D1117),
    surface: Color(0xFF161B22),
    error: Color(0xFFD73A49),
    onPrimary: Color(0xFFFFFFFF),
    onSecondary: Color(0xFFFFFFFF),
    onBackground: Color(0xFFFFFFFF),
    onSurface: Color(0xFFFFFFFF),
    onError: Color(0xFFFFFFFF),
  ).copyWith(background: const Color(0xFF0D1117)),
);
