/*
------------------------------------------------------------------------
| BUILD CONTEXT EXTENSION        | For: Oaks Intelligence               |
| ----------------------------------------------------------------------
| By: Caleb Jesusegun            | Date: 09 - Mar - 2024                |
| ----------------------------------------------------------------------
| Modified by:                   | Comments:                            |
------------------------------------------------------------------------
NB:
*/

import 'package:flutter/material.dart';
import 'app_typography.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  AppTypography? get typography => theme.extension<AppTypography>();
}
