import 'package:flutter/material.dart';

import '../App_color/app_color_dark.dart';

ThemeData getDarkThemeData() => ThemeData(
      textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor:
              MaterialStatePropertyAll(AppColorsDark.textButtonForeGroundColor),
        ),
      ),

      scaffoldBackgroundColor: const Color(0xff212733),
      brightness: Brightness.dark,

      primaryColor:
          AppColorsDark.primaryColor, // Set your dark theme accent color

      fontFamily: 'YourDarkThemeFont', // Set your dark theme font family

      textTheme: ThemeData.dark().textTheme.apply(
            fontFamily:
                'YourDarkThemeFont', // Set your dark theme text font family

            // Continue configuring text styles for your dark theme if needed
          ),

      iconTheme: const IconThemeData(
        color: Colors.white, // Set your dark theme icon color
      ),

      appBarTheme: const AppBarTheme(
        color: AppColorsDark.appBarColor, // Set your dark theme app bar color

        iconTheme: IconThemeData(
          color: Colors.white, // Set your dark theme app bar icon color
        ),

        // Add more theme attributes for your dark theme as needed
      ),
    );
