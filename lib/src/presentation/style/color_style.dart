import 'package:flutter/material.dart';

/// Get Background Color for given context
Color getBackgroundColor(BuildContext context) => Theme.of(context).colorScheme.background;

/// Get On Background Color for given context
Color getOnBackgroundColor(BuildContext context) => Theme.of(context).colorScheme.onBackground;

/// Get Primary for given context
Color getPrimaryColor(BuildContext context) => Theme.of(context).colorScheme.primary;
