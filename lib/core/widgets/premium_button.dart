import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_typography.dart';

enum PremiumButtonVariant { primary, ghost, text }

class PremiumButton extends StatelessWidget {
  const PremiumButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = PremiumButtonVariant.primary,
    this.icon,
    this.compact = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final PremiumButtonVariant variant;
  final IconData? icon;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final vPad = compact ? 9.0 : 13.0;
    final hPad = compact ? 14.0 : 22.0;
    final padding = EdgeInsets.symmetric(horizontal: hPad, vertical: vPad);

    return switch (variant) {
      PremiumButtonVariant.primary => ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.accent,
            foregroundColor: AppColors.primaryText,
            padding: padding,
            elevation: 0,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ).copyWith(
            overlayColor: WidgetStateProperty.resolveWith((states) =>
                states.contains(WidgetState.hovered) ? AppColors.accentBright.withValues(alpha: 0.3) : null),
          ),
          child: _label(AppColors.primaryText),
        ),
      PremiumButtonVariant.ghost => OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.lavender,
            side: const BorderSide(color: AppColors.accent, width: 1.5),
            padding: padding,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ).copyWith(
            overlayColor: WidgetStateProperty.resolveWith((states) =>
                states.contains(WidgetState.hovered) ? AppColors.accentSubtle : null),
          ),
          child: _label(AppColors.lavender),
        ),
      PremiumButtonVariant.text => TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            foregroundColor: AppColors.secondaryText,
            padding: padding,
          ),
          child: _label(AppColors.secondaryText),
        ),
    };
  }

  Widget _label(Color color) {
    final style = AppTypography.textTheme.labelLarge?.copyWith(color: color, fontSize: compact ? 12 : 13);
    if (icon != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: compact ? 14 : 16, color: color),
          const SizedBox(width: 7),
          Text(label, style: style),
        ],
      );
    }
    return Text(label, style: style);
  }
}
