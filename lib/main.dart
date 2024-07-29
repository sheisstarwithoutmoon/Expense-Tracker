import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var colorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 209, 205, 205),
);

var darkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: Color.fromARGB(255, 190, 188, 185),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.light().copyWith(
        useMaterial3: true,
        colorScheme: darkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: darkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: darkColorScheme.primaryContainer,
            foregroundColor: darkColorScheme.onPrimaryContainer,
          ),
        ),
      ),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: colorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: colorScheme.onPrimaryContainer,
          foregroundColor: colorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: colorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSecondaryContainer,
                fontSize: 16,
              ),
            ),
      ),
      debugShowCheckedModeBanner: false,
      // themeMode: ThemeMode.system, // default
      home: const Expenses(),
    ),
  );
  // });
}