import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key, this.vertical = false});
  final bool vertical;

  @override
  Widget build(BuildContext context) {
    return vertical
        ? Container(width: 1, color: AppColors.border)
        : Container(height: 1, color: AppColors.border);
  }
}
