import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

abstract final class AppTypography {
  static TextTheme get textTheme => TextTheme(
        displayLarge: GoogleFonts.cormorantGaramond(
          fontSize: 48, fontWeight: FontWeight.w600,
          color: AppColors.primaryText, letterSpacing: -0.5, height: 1.1,
        ),
        displayMedium: GoogleFonts.cormorantGaramond(
          fontSize: 36, fontWeight: FontWeight.w600,
          color: AppColors.primaryText, letterSpacing: -0.3, height: 1.15,
        ),
        displaySmall: GoogleFonts.cormorantGaramond(
          fontSize: 28, fontWeight: FontWeight.w500,
          color: AppColors.primaryText, letterSpacing: -0.2, height: 1.2,
        ),
        headlineLarge: GoogleFonts.cormorantGaramond(
          fontSize: 24, fontWeight: FontWeight.w500,
          color: AppColors.primaryText, height: 1.3,
        ),
        headlineMedium: GoogleFonts.inter(
          fontSize: 20, fontWeight: FontWeight.w600,
          color: AppColors.primaryText, height: 1.3,
        ),
        headlineSmall: GoogleFonts.inter(
          fontSize: 17, fontWeight: FontWeight.w600,
          color: AppColors.primaryText, height: 1.4,
        ),
        titleLarge: GoogleFonts.inter(
          fontSize: 16, fontWeight: FontWeight.w600,
          color: AppColors.primaryText, height: 1.4,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 14, fontWeight: FontWeight.w600,
          color: AppColors.primaryText, letterSpacing: 0.1, height: 1.4,
        ),
        titleSmall: GoogleFonts.inter(
          fontSize: 11, fontWeight: FontWeight.w700,
          color: AppColors.secondaryText, letterSpacing: 0.8, height: 1.4,
        ),
        bodyLarge: GoogleFonts.inter(
          fontSize: 16, fontWeight: FontWeight.w400,
          color: AppColors.primaryText, height: 1.65,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 14, fontWeight: FontWeight.w400,
          color: AppColors.secondaryText, height: 1.6,
        ),
        bodySmall: GoogleFonts.inter(
          fontSize: 12, fontWeight: FontWeight.w400,
          color: AppColors.secondaryText, height: 1.5,
        ),
        labelLarge: GoogleFonts.inter(
          fontSize: 13, fontWeight: FontWeight.w500,
          color: AppColors.primaryText, letterSpacing: 0.3,
        ),
        labelMedium: GoogleFonts.inter(
          fontSize: 11, fontWeight: FontWeight.w600,
          color: AppColors.secondaryText, letterSpacing: 1.0,
        ),
        labelSmall: GoogleFonts.inter(
          fontSize: 10, fontWeight: FontWeight.w600,
          color: AppColors.mutedText, letterSpacing: 1.2,
        ),
      );

  static TextStyle get displayTitle => GoogleFonts.cormorantGaramond(
        fontSize: 32, fontWeight: FontWeight.w600,
        color: AppColors.primaryText, height: 1.2,
      );

  static TextStyle get sectionLabel => GoogleFonts.inter(
        fontSize: 10, fontWeight: FontWeight.w700,
        color: AppColors.secondaryText, letterSpacing: 1.8,
      );

  static TextStyle get badgeLabel => GoogleFonts.inter(
        fontSize: 10, fontWeight: FontWeight.w700,
        color: AppColors.primaryText, letterSpacing: 0.8,
      );
}
