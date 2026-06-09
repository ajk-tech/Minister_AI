import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/app_colors.dart';
import 'core/router/app_router.dart';

void main() {
  runApp(const ProviderScope(child: MinisterAiApp()));
}

class MinisterAiApp extends ConsumerWidget {
  const MinisterAiApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return MaterialApp.router(
      title: 'Minister AI',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      routerConfig: router,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: _AppBackground(child: child!),
        breakpoints: const [
          Breakpoint(start: 0, end: 599, name: MOBILE),
          Breakpoint(start: 600, end: 1023, name: TABLET),
          Breakpoint(start: 1024, end: double.infinity, name: DESKTOP),
        ],
      ),
    );
  }
}

/// Subtle ambient radial glow in the top-left corner for depth
class _AppBackground extends StatelessWidget {
  const _AppBackground({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // Ambient glow layer
      Positioned(
        top: -200, left: -200,
        child: Container(
          width: 600, height: 600,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                AppColors.accent.withValues(alpha: 0.06),
                Colors.transparent,
              ],
            ),
          ),
        ),
      ),
      Positioned(
        bottom: -150, right: -150,
        child: Container(
          width: 400, height: 400,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                AppColors.gold.withValues(alpha: 0.04),
                Colors.transparent,
              ],
            ),
          ),
        ),
      ),
      child,
    ]);
  }
}
