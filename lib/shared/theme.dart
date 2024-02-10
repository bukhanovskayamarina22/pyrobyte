import 'package:flutter/material.dart';
import 'package:pyrobyte/shared/constants.dart';

ColorScheme lightColorScheme = const ColorScheme.light(
  primary: Color(0xff218cef),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xfff1f1f9),
  onPrimaryContainer: Color(0xff131037),
  secondary: Color(0xff999999),
  tertiary: Color(0xffcccccc),
  error: Color(0xffe63426),
  errorContainer: Color(0xfff97879),
  surface: Color(0xffffffff),
  onSurface: Color(0xff131037),
  outline: Color(0xff218cef),
);

// var color7 = Color(0xff00be08); //success color?lor

TextTheme textTheme = const TextTheme(
  displayLarge: TextStyle(
      fontFamily: Constants.jost,
      fontWeight: FontWeight.w700,
      fontSize: 40,
      height: 48 / 40), // Largest heading style
  displayMedium: TextStyle(
      fontFamily: Constants.roboto,
      fontWeight: FontWeight.w700,
      fontSize: 24,
      height: 32 / 24), // Second largest heading style
  displaySmall: TextStyle(
    fontFamily: Constants.roboto,
    fontWeight: FontWeight.w400,
    fontSize: 24,
    height: 32 / 24,
  ), // Third largest heading style
  headlineMedium: TextStyle(
    fontFamily: Constants.jost,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 24 / 16,
  ), // Fourth largest heading style
  headlineSmall: TextStyle(
    fontFamily: Constants.roboto,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 24 / 16,
  ), // Fifth largest heading style
  titleLarge: TextStyle(
    fontFamily: Constants.roboto,
    fontWeight: FontWeight.w300,
    fontSize: 16,
    height: 24 / 16,
  ), // Smallest heading style

  titleMedium: TextStyle(
      fontFamily: Constants.roboto,
      fontWeight: FontWeight.w300,
      fontSize: 14,
      height: 16 / 14), // Larger body text style
  titleSmall: TextStyle(
      fontFamily: Constants.jost,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 16 / 14), // Smaller body text style

  bodyLarge: TextStyle(
    fontFamily: Constants.jost,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 16 / 12,
  ), // Default body text style
  bodyMedium: TextStyle(
    fontFamily: Constants.roboto,
    fontWeight: FontWeight.w300,
    fontSize: 12,
    height: 16 / 12,
  ), // Alternative body text style

  bodySmall: TextStyle(
    fontFamily: Constants.jost,
    fontWeight: FontWeight.w300,
    fontSize: 14,
    height: 16 / 14,
  ), // Caption text style
  labelLarge: TextStyle(
    fontFamily: Constants.jost,
    fontWeight: FontWeight.w300,
    fontSize: 16,
    height: 24 / 16,
  ), // Button text style
  labelSmall: TextStyle(
    fontFamily: Constants.jost,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 16 / 12,
  ), // Overline text style
);
