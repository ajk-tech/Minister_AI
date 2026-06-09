import 'package:flutter/material.dart';
import '../../core/widgets/widgets.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_typography.dart';
import '../../core/theme/app_spacing.dart';

class StubScreen extends StatelessWidget {
  const StubScreen({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: ExecutiveCard(
            padding: const EdgeInsets.all(AppSpacing.xxxl),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(icon, color: AppColors.accentDim, size: 48),
                const SizedBox(height: AppSpacing.xl),
                Text(title, style: AppTypography.textTheme.headlineMedium),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  subtitle,
                  style: AppTypography.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSpacing.xl),
                const StatusBadge(
                  label: 'Coming Soon',
                  color: AppColors.accentDim,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
