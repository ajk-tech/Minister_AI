import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../theme/app_colors.dart';
import '../theme/app_typography.dart';
import '../theme/app_spacing.dart';

class _NavItem {
  const _NavItem({required this.icon, required this.selectedIcon, required this.label, required this.route});
  final IconData icon;
  final IconData selectedIcon;
  final String label;
  final String route;
}

const _navItems = [
  _NavItem(icon: Icons.dashboard_outlined,       selectedIcon: Icons.dashboard,        label: 'Dashboard',       route: '/dashboard'),
  _NavItem(icon: Icons.psychology_outlined,       selectedIcon: Icons.psychology,       label: 'Assistant',       route: '/assistant'),
  _NavItem(icon: Icons.edit_document,             selectedIcon: Icons.edit_document,    label: 'Drafting',        route: '/drafting'),
  _NavItem(icon: Icons.manage_search_outlined,    selectedIcon: Icons.manage_search,    label: 'Knowledge',       route: '/knowledge'),
  _NavItem(icon: Icons.mail_outline,              selectedIcon: Icons.mail,             label: 'Comms',           route: '/communications'),
  _NavItem(icon: Icons.calendar_today_outlined,   selectedIcon: Icons.calendar_today,   label: 'Calendar',        route: '/calendar'),
  _NavItem(icon: Icons.notifications_outlined,    selectedIcon: Icons.notifications,    label: 'Alerts',          route: '/notifications'),
];

class ScaffoldWithNavigation extends StatelessWidget {
  const ScaffoldWithNavigation({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  void _onTap(int index) {
    navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    final isTablet = ResponsiveBreakpoints.of(context).largerThan(MOBILE);
    return isTablet
        ? _TabletShell(currentIndex: navigationShell.currentIndex, onTap: _onTap, body: navigationShell)
        : _MobileShell(currentIndex: navigationShell.currentIndex, onTap: _onTap, body: navigationShell);
  }
}

class _TabletShell extends StatelessWidget {
  const _TabletShell({required this.currentIndex, required this.onTap, required this.body});
  final int currentIndex;
  final ValueChanged<int> onTap;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Row(children: [
        _SideRail(currentIndex: currentIndex, onTap: onTap, extended: isDesktop),
        Container(width: 1, color: AppColors.border),
        Expanded(child: body),
      ]),
    );
  }
}

class _SideRail extends StatelessWidget {
  const _SideRail({required this.currentIndex, required this.onTap, required this.extended});
  final int currentIndex;
  final ValueChanged<int> onTap;
  final bool extended;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: extended ? 200 : 68,
      color: AppColors.surface,
      child: Column(children: [
        // Logo area
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 72,
          padding: EdgeInsets.symmetric(horizontal: extended ? AppSpacing.xl : 0),
          alignment: extended ? Alignment.centerLeft : Alignment.center,
          child: extended
              ? Row(children: [
                  _LogoMark(),
                  const SizedBox(width: 10),
                  Text('Minister AI', style: AppTypography.textTheme.titleLarge?.copyWith(color: AppColors.lavender)),
                ])
              : _LogoMark(),
        ),
        Container(height: 1, color: AppColors.border),
        const SizedBox(height: AppSpacing.sm),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs, horizontal: AppSpacing.sm),
            itemCount: _navItems.length,
            itemBuilder: (_, i) => _RailItem(
              item: _navItems[i],
              selected: currentIndex == i,
              extended: extended,
              onTap: () => onTap(i),
            ),
          ),
        ),
        Container(height: 1, color: AppColors.border),
        Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: extended
              ? Row(children: [
                  const CircleAvatar(radius: 16, backgroundColor: AppColors.accentSubtle, child: Icon(Icons.person_outline, size: 16, color: AppColors.lavenderDim)),
                  const SizedBox(width: 10),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text('Minister Sharma', style: AppTypography.textTheme.titleSmall?.copyWith(color: AppColors.primaryText)),
                    Text('Secure Session', style: AppTypography.textTheme.labelSmall),
                  ]),
                ])
              : const CircleAvatar(radius: 16, backgroundColor: AppColors.accentSubtle, child: Icon(Icons.person_outline, size: 16, color: AppColors.lavenderDim)),
        ),
      ]),
    );
  }
}

class _RailItem extends StatefulWidget {
  const _RailItem({required this.item, required this.selected, required this.extended, required this.onTap});
  final _NavItem item;
  final bool selected;
  final bool extended;
  final VoidCallback onTap;

  @override
  State<_RailItem> createState() => _RailItemState();
}

class _RailItemState extends State<_RailItem> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          margin: const EdgeInsets.symmetric(vertical: 2),
          padding: EdgeInsets.symmetric(horizontal: widget.extended ? 14 : 0, vertical: 10),
          decoration: BoxDecoration(
            color: widget.selected
                ? AppColors.accentSubtle
                : (_hovered ? AppColors.surfaceElevated : Colors.transparent),
            borderRadius: BorderRadius.circular(8),
            border: widget.selected
                ? Border.all(color: AppColors.accent.withValues(alpha: 0.3), width: 1)
                : null,
          ),
          child: widget.extended
              ? Row(children: [
                  Icon(
                    widget.selected ? widget.item.selectedIcon : widget.item.icon,
                    size: 20,
                    color: widget.selected ? AppColors.lavender : (_hovered ? AppColors.primaryText : AppColors.secondaryText),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    widget.item.label,
                    style: AppTypography.textTheme.labelLarge?.copyWith(
                      color: widget.selected ? AppColors.lavender : (_hovered ? AppColors.primaryText : AppColors.secondaryText),
                      fontWeight: widget.selected ? FontWeight.w600 : FontWeight.w500,
                    ),
                  ),
                ])
              : Center(
                  child: Icon(
                    widget.selected ? widget.item.selectedIcon : widget.item.icon,
                    size: 20,
                    color: widget.selected ? AppColors.lavender : (_hovered ? AppColors.primaryText : AppColors.secondaryText),
                  ),
                ),
        ),
      ),
    );
  }
}

class _LogoMark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32, height: 32,
      decoration: BoxDecoration(
        color: AppColors.accent,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [BoxShadow(color: AppColors.accent.withValues(alpha: 0.4), blurRadius: 8, offset: const Offset(0, 2))],
      ),
      child: const Icon(Icons.psychology, color: AppColors.primaryText, size: 18),
    );
  }
}

class _MobileShell extends StatelessWidget {
  const _MobileShell({required this.currentIndex, required this.onTap, required this.body});
  final int currentIndex;
  final ValueChanged<int> onTap;
  final Widget body;

  static const _mobileItems = [
    _NavItem(icon: Icons.dashboard_outlined, selectedIcon: Icons.dashboard, label: 'Dashboard', route: '/dashboard'),
    _NavItem(icon: Icons.psychology_outlined, selectedIcon: Icons.psychology, label: 'Assistant', route: '/assistant'),
    _NavItem(icon: Icons.edit_document, selectedIcon: Icons.edit_document, label: 'Drafting', route: '/drafting'),
    _NavItem(icon: Icons.manage_search_outlined, selectedIcon: Icons.manage_search, label: 'Knowledge', route: '/knowledge'),
  ];
  static const _mobileToFull = [0, 1, 2, 3];

  @override
  Widget build(BuildContext context) {
    final mobileIndex = _mobileToFull.contains(currentIndex) ? _mobileToFull.indexOf(currentIndex) : 0;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: body,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          border: const Border(top: BorderSide(color: AppColors.border)),
          boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.3), blurRadius: 20, offset: const Offset(0, -4))],
        ),
        child: BottomNavigationBar(
          currentIndex: mobileIndex,
          onTap: (i) => onTap(_mobileToFull[i]),
          items: _mobileItems.map((item) => BottomNavigationBarItem(
            icon: Icon(item.icon),
            activeIcon: Icon(item.selectedIcon),
            label: item.label,
          )).toList(),
        ),
      ),
    );
  }
}
