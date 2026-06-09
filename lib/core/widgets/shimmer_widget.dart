import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class ShimmerWidget extends StatefulWidget {
  const ShimmerWidget({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = 6.0,
  });

  final double width;
  final double height;
  final double borderRadius;

  @override
  State<ShimmerWidget> createState() => _ShimmerWidgetState();
}

class _ShimmerWidgetState extends State<ShimmerWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1500))..repeat();
    _animation = Tween<double>(begin: -1.5, end: 2.5).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (_, __) => Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          gradient: LinearGradient(
            begin: Alignment(_animation.value - 1, 0),
            end: Alignment(_animation.value, 0),
            colors: const [
              AppColors.surface,
              AppColors.surfaceElevated,
              AppColors.surfaceHigh,
              AppColors.surfaceElevated,
              AppColors.surface,
            ],
          ),
        ),
      ),
    );
  }
}

class ShimmerCard extends StatelessWidget {
  const ShimmerCard({super.key, this.height = 100});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShimmerWidget(width: 120, height: 11),
          const SizedBox(height: 12),
          ShimmerWidget(width: double.infinity, height: 10),
          const SizedBox(height: 7),
          ShimmerWidget(width: 200, height: 10),
        ],
      ),
    );
  }
}
