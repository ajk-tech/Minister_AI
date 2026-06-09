import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../widgets/scaffold_with_navigation.dart';
import '../../features/dashboard/presentation/screens/dashboard_screen.dart';
import '../../features/ai_assistant/presentation/screens/assistant_screen.dart';
import '../../features/drafting/presentation/screens/drafting_screen.dart';
import '../../features/knowledge/presentation/screens/knowledge_screen.dart';
import '../../features/shared/stub_screen.dart';

part 'app_router.g.dart';

Page<void> _fadePage(BuildContext context, GoRouterState state, Widget child) =>
    CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionDuration: const Duration(milliseconds: 200),
      transitionsBuilder: (_, animation, __, child) =>
          FadeTransition(opacity: animation, child: child),
    );

@riverpod
GoRouter appRouter(Ref ref) {
  return GoRouter(
    initialLocation: '/dashboard',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (_, __, shell) => ScaffoldWithNavigation(navigationShell: shell),
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/dashboard',
              pageBuilder: (c, s) => _fadePage(c, s, const DashboardScreen()),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/assistant',
              pageBuilder: (c, s) => _fadePage(c, s, const AssistantScreen()),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/drafting',
              pageBuilder: (c, s) => _fadePage(c, s, const DraftingScreen()),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/knowledge',
              pageBuilder: (c, s) => _fadePage(c, s, const KnowledgeScreen()),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/communications',
              pageBuilder: (c, s) => _fadePage(c, s, const StubScreen(
                icon: Icons.mail_outline,
                title: 'Communications',
                subtitle: 'Unified communication workspace\nfor email, messaging, and follow-ups.',
              )),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/calendar',
              pageBuilder: (c, s) => _fadePage(c, s, const StubScreen(
                icon: Icons.calendar_today_outlined,
                title: 'Calendar & Meetings',
                subtitle: 'Executive scheduling, agenda view,\nand meeting management.',
              )),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: '/notifications',
              pageBuilder: (c, s) => _fadePage(c, s, const StubScreen(
                icon: Icons.notifications_outlined,
                title: 'Notifications',
                subtitle: 'Priority-categorized alerts\nand workflow notifications.',
              )),
            ),
          ]),
        ],
      ),
    ],
  );
}
