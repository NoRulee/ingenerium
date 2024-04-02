import 'package:flutter/material.dart';

/// Get Title Text Style with given [context].
TextStyle getTitleTextStyle(
  BuildContext context,
) {
  return const TextStyle(
    color: Colors.black,
    fontSize: 24.0,
    fontWeight: FontWeight.w700,
    fontFamily: 'MontserratTitle',
  );
}

/// Get Bold Text Style with given [context].
TextStyle getBoldTextStyle(
  BuildContext context,
) {
  return const TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
    fontFamily: 'MontserratBold',
  );
}

/// Get Regular Text Style with given [context].
TextStyle getRegularTextStyle(
  BuildContext context,
) {
  return const TextStyle(
    color: Colors.black,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    fontFamily: 'MontserratRegular',
  );
}

/// Get Light Text Style with given [context].
TextStyle getLightTextStyle(
  BuildContext context,
) {
  return const TextStyle(
    color: Colors.white,
    fontSize: 14.0,
    fontWeight: FontWeight.w300,
    fontFamily: 'MontserratLight',
  );
}

/// Get Thin Text Style with given [context].
TextStyle getThinTextStyle(
  BuildContext context,
) {
  return const TextStyle(
    color: Colors.black,
    fontSize: 10.0,
    fontWeight: FontWeight.w300,
    fontFamily: 'MontserratThin',
  );
}
