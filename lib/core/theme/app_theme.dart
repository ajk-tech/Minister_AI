import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_colors.dart';
import 'app_spacing.dart';
import 'app_typography.dart';

abstract final class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.dark(
        surface: AppColors.surface,
        primary: AppColors.accent,
        onPrimary: AppColors.primaryText,
        secondary: AppColors.gold,
        onSecondary: AppColors.background,
        tertiary: AppColors.lavender,
        error: AppColors.danger,
        onSurface: AppColors.primaryText,
        outline: AppColors.border,
        surfaceContainerHighest: AppColors.surfaceElevated,
      ),
      textTheme: AppTypography.textTheme,
      cardTheme: CardThemeData(
        color: AppColors.surface,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
          side: const BorderSide(color: AppColors.border, width: 1),
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: AppColors.border,
        thickness: 1,
        space: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surfaceElevated,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(color: AppColors.accent, width: 1.5),
        ),
        labelStyle: AppTypography.textTheme.bodyMedium,
        hintStyle: AppTypography.textTheme.bodyMedium?.copyWith(color: AppColors.mutedText),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: AppColors.surface,
        selectedIconTheme: const IconThemeData(color: AppColors.lavender, size: 22),
        unselectedIconTheme: const IconThemeData(color: AppColors.secondaryText, size: 22),
        selectedLabelTextStyle: AppTypography.textTheme.labelLarge?.copyWith(color: AppColors.lavender),
        unselectedLabelTextStyle: AppTypography.textTheme.labelLarge?.copyWith(color: AppColors.secondaryText),
        indicatorColor: AppColors.accentSubtle,
        indicatorShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.surface,
        selectedItemColor: AppColors.lavender,
        unselectedItemColor: AppColors.secondaryText,
        selectedLabelStyle: AppTypography.textTheme.labelMedium?.copyWith(color: AppColors.lavender),
        unselectedLabelStyle: AppTypography.textTheme.labelMedium,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
      iconTheme: const IconThemeData(color: AppColors.secondaryText, size: 20),
      sliderTheme: SliderThemeData(
        activeTrackColor: AppColors.accent,
        thumbColor: AppColors.accent,
        inactiveTrackColor: AppColors.border,
        overlayColor: AppColors.accent.withValues(alpha: 0.15),
        trackHeight: 3,
      ),
      expansionTileTheme: const ExpansionTileThemeData(
        iconColor: AppColors.secondaryText,
        collapsedIconColor: AppColors.mutedText,
        textColor: AppColors.primaryText,
        collapsedTextColor: AppColors.secondaryText,
        tilePadding: EdgeInsets.zero,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.surface,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleTextStyle: AppTypography.textTheme.headlineSmall,
        iconTheme: const IconThemeData(color: AppColors.secondaryText),
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: AppColors.surfaceHigh,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: AppColors.border),
        ),
        textStyle: AppTypography.textTheme.bodySmall?.copyWith(color: AppColors.primaryText),
      ),
      useMaterial3: true,
    );
  }
}
