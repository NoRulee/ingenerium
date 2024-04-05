import 'package:flutter/material.dart';

const Color defaultColor = Colors.black;

/// Get Title Text Style with given [context].
TextStyle getBoldTextStyle(
  BuildContext context, {
  Color? color,
}) {
  return TextStyle(
    color: color ?? defaultColor,
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
    fontFamily: 'MontserratBold',
  );
}

/// Get Bold Text Style with given [context].
TextStyle getMediumTextStyle(
  BuildContext context, {
  Color? color,
}) {
  return TextStyle(
    color: color ?? defaultColor,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    fontFamily: 'MontserratMedium',
  );
}

/// Get Regular Text Style with given [context].
TextStyle getRegularTextStyle(
  BuildContext context, {
  Color? color,
}) {
  return TextStyle(
    color: color ?? defaultColor,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    fontFamily: 'MontserratRegular',
  );
}

/// Get Light Text Style with given [context].
TextStyle getLightTextStyle(
  BuildContext context, {
  Color? color,
}) {
  return TextStyle(
    color: color ?? defaultColor,
    fontSize: 14.0,
    fontWeight: FontWeight.w300,
    fontFamily: 'MontserratLight',
  );
}

/// Get Thin Text Style with given [context].
TextStyle getThinTextStyle(
  BuildContext context, {
  Color? color,
}) {
  return TextStyle(
    color: color ?? defaultColor,
    fontSize: 10.0,
    fontWeight: FontWeight.w300,
    fontFamily: 'MontserratThin',
  );
}
