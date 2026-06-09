import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_typography.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.label,
    this.actionLabel,
    this.onAction,
  });

  final String label;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label.toUpperCase(), style: AppTypography.sectionLabel),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: 1,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [AppColors.border, Colors.transparent]),
            ),
          ),
        ),
        if (actionLabel != null) ...[
          const SizedBox(width: 12),
          GestureDetector(
            onTap: onAction,
            child: Text(
              actionLabel!,
              style: AppTypography.textTheme.labelMedium?.copyWith(color: AppColors.lavenderDim),
            ),
          ),
        ],
      ],
    );
  }
}
