import 'dart:ui';
import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';

class GlassCard extends StatefulWidget {
  const GlassCard({
    super.key,
    required this.child,
    this.padding,
    this.borderRadius,
    this.blur = 16.0,
    this.onTap,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final double blur;
  final VoidCallback? onTap;

  @override
  State<GlassCard> createState() => _GlassCardState();
}

class _GlassCardState extends State<GlassCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final radius = widget.borderRadius ?? BorderRadius.circular(AppSpacing.cardRadius);
    return MouseRegion(
      cursor: widget.onTap != null ? SystemMouseCursors.click : MouseCursor.defer,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          decoration: BoxDecoration(
            borderRadius: radius,
            boxShadow: _hovered && widget.onTap != null
                ? [BoxShadow(color: AppColors.accent.withValues(alpha: 0.12), blurRadius: 16, offset: const Offset(0, 6))]
                : null,
          ),
          child: ClipRRect(
            borderRadius: radius,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: widget.blur, sigmaY: widget.blur),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 160),
                decoration: BoxDecoration(
                  color: _hovered && widget.onTap != null
                      ? AppColors.glassOverlay.withValues(alpha: 0.18)
                      : AppColors.glassOverlay,
                  borderRadius: radius,
                  border: Border.all(
                    color: _hovered && widget.onTap != null ? AppColors.glassBorder.withValues(alpha: 0.5) : AppColors.glassBorder,
                    width: 1,
                  ),
                ),
                padding: widget.padding ?? const EdgeInsets.all(AppSpacing.cardPadding),
                child: widget.child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
