import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_urban_india/core/constants/constant_colors.dart';

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: ConstantColors.primaryColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll<Color>(ConstantColors.white),
      backgroundColor: WidgetStatePropertyAll<Color>(ConstantColors.blueColor),
      shape: WidgetStatePropertyAll<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll<Color>(ConstantColors.white),
    ),
  ),
  iconTheme: IconThemeData(color: ConstantColors.white),
  appBarTheme: AppBarTheme(backgroundColor: ConstantColors.secondaryColor),
  textTheme: TextTheme(
    displayLarge: GoogleFonts.archivo(
      decoration: TextDecoration.none,
      color: ConstantColors.white,
      fontSize: 20,
      fontWeight: FontWeight.w800,
    ),
    displayMedium: GoogleFonts.archivo(
      decoration: TextDecoration.none,
      color: ConstantColors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    displaySmall: GoogleFonts.archivo(
      decoration: TextDecoration.none,
      color: ConstantColors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodySmall: GoogleFonts.archivo(
      decoration: TextDecoration.none,
      color: ConstantColors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: GoogleFonts.archivo(
      decoration: TextDecoration.none,
      color: ConstantColors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: GoogleFonts.archivo(
      decoration: TextDecoration.none,
      color: ConstantColors.white,
      fontSize: 20,
      fontWeight: FontWeight.w800,
    ),
    titleSmall: GoogleFonts.archivo(
      decoration: TextDecoration.none,
      color: ConstantColors.white,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    titleMedium: GoogleFonts.archivo(
      decoration: TextDecoration.none,
      color: ConstantColors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: GoogleFonts.archivo(
      decoration: TextDecoration.none,
      color: ConstantColors.white,
      fontSize: 20,
      fontWeight: FontWeight.w800,
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: ConstantColors.secondaryColor,
    foregroundColor: ConstantColors.white,
    elevation: 100,
    // focusColor: ,
    highlightElevation: 1,
  ),
);
