import 'package:flutter/material.dart';

import 'package:cube_system/styles/app_colors/app_colors.dart';
import 'package:cube_system/styles/app_text_styles/app_text_styles.dart';

extension AppThemeContextExtension on BuildContext {
  AppColors get colors => Theme.of(this).extension<AppColors>()!;
  AppTextStyles get textStyles => Theme.of(this).extension<AppTextStyles>()!;
}
