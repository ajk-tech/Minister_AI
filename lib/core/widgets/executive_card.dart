import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';

class ExecutiveCard extends StatefulWidget {
  const ExecutiveCard({
    super.key,
    required this.child,
    this.padding,
    this.goldAccent = false,
    this.accentColor,
    this.onTap,
    this.color,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final bool goldAccent;
  final Color? accentColor;
  final VoidCallback? onTap;
  final Color? color;

  @override
  State<ExecutiveCard> createState() => _ExecutiveCardState();
}

class _ExecutiveCardState extends State<ExecutiveCard> {
  bool _hovered = false;
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final effectiveAccent = widget.accentColor ?? AppColors.accent;
    final isInteractive = widget.onTap != null;

    return MouseRegion(
      cursor: isInteractive ? SystemMouseCursors.click : MouseCursor.defer,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        onTapDown: (_) => setState(() => _pressed = true),
        onTapUp: (_) => setState(() => _pressed = false),
        onTapCancel: () => setState(() => _pressed = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          curve: Curves.easeOut,
          decoration: BoxDecoration(
            color: _pressed
                ? AppColors.surfaceHigh
                : (_hovered && isInteractive ? AppColors.surfaceElevated : (widget.color ?? AppColors.surface)),
            borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
            border: Border(
              left: (widget.goldAccent || widget.accentColor != null)
                  ? BorderSide(color: effectiveAccent, width: 3)
                  : BorderSide(
                      color: _hovered && isInteractive ? AppColors.accent : AppColors.border,
                      width: _hovered && isInteractive ? 1.5 : 1,
                    ),
              top: BorderSide(color: _hovered && isInteractive ? AppColors.border.withValues(alpha: 1.5) : AppColors.border),
              right: BorderSide(color: AppColors.border),
              bottom: BorderSide(color: AppColors.border),
            ),
            boxShadow: _hovered && isInteractive
                ? [BoxShadow(color: AppColors.accent.withValues(alpha: 0.08), blurRadius: 12, offset: const Offset(0, 4))]
                : null,
          ),
          padding: widget.padding ?? const EdgeInsets.all(AppSpacing.cardPadding),
          child: widget.child,
        ),
      ),
    );
  }
}
