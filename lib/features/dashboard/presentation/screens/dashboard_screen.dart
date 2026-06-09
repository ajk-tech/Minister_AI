import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/models/dashboard_models.dart';
import '../providers/dashboard_provider.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardDataProvider);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: state.when(
          loading: () => const _DashboardSkeleton(),
          error: (e, _) => Center(child: Text('Error: $e')),
          data: (data) => _DashboardContent(data: data),
        ),
      ),
    );
  }
}

class _DashboardContent extends StatelessWidget {
  const _DashboardContent({required this.data});
  final DashboardState data;

  @override
  Widget build(BuildContext context) {
    final isTablet = ResponsiveBreakpoints.of(context).largerThan(MOBILE);
    final h = AppSpacing.pageHorizontal;

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.fromLTRB(h, 24, h, 0),
          sliver: SliverToBoxAdapter(child: _GreetingHeader(actions: data.priorityActions)),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(h, AppSpacing.sectionGap, h, 0),
          sliver: SliverToBoxAdapter(child: _AssistantEntryCard()),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(h, AppSpacing.sectionGap, h, 0),
          sliver: SliverToBoxAdapter(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SectionHeader(label: 'Priority Actions'),
              const SizedBox(height: AppSpacing.base),
              _PriorityActionsRow(items: data.priorityActions),
            ]),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(h, AppSpacing.sectionGap, h, 0),
          sliver: SliverToBoxAdapter(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SectionHeader(label: 'Intelligence Overview'),
              const SizedBox(height: AppSpacing.base),
              _IntelligenceGrid(items: data.intelligenceUpdates, isTablet: isTablet),
            ]),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(h, AppSpacing.sectionGap, h, 0),
          sliver: SliverToBoxAdapter(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SectionHeader(label: 'Upcoming Meetings'),
              const SizedBox(height: AppSpacing.base),
              ...data.upcomingMeetings.take(3).map((m) => Padding(
                padding: const EdgeInsets.only(bottom: AppSpacing.sm),
                child: _MeetingCard(meeting: m),
              )),
            ]),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(h, AppSpacing.sectionGap, h, 0),
          sliver: SliverToBoxAdapter(
            child: isTablet
                ? Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Expanded(child: _TasksSection(tasks: data.pendingTasks)),
                    const SizedBox(width: AppSpacing.base),
                    Expanded(child: _DraftsSection(drafts: data.recentDrafts)),
                  ])
                : Column(children: [
                    _TasksSection(tasks: data.pendingTasks),
                    const SizedBox(height: AppSpacing.base),
                    _DraftsSection(drafts: data.recentDrafts),
                  ]),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(h, AppSpacing.sectionGap, h, 40),
          sliver: SliverToBoxAdapter(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SectionHeader(label: 'Quick Access'),
              const SizedBox(height: AppSpacing.base),
              _QuickAccessGrid(items: data.quickAccessItems),
            ]),
          ),
        ),
      ],
    );
  }
}

class _GreetingHeader extends StatelessWidget {
  const _GreetingHeader({required this.actions});
  final List<PriorityAction> actions;

  String get _greeting {
    final h = DateTime.now().hour;
    if (h < 12) return 'Good morning';
    if (h < 17) return 'Good afternoon';
    return 'Good evening';
  }

  @override
  Widget build(BuildContext context) {
    final highCount = actions.where((a) => a.urgency == UrgencyLevel.high).length;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Accent rule
        Container(
          width: 40, height: 2,
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [AppColors.accent, AppColors.gold]),
            borderRadius: BorderRadius.circular(1),
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        Text(
          '$_greeting, Minister Sharma',
          style: GoogleFonts.cormorantGaramond(
            fontSize: 38, fontWeight: FontWeight.w600,
            color: AppColors.primaryText, height: 1.1,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(_formatDate(DateTime.now()), style: AppTypography.textTheme.bodyMedium),
        const SizedBox(height: AppSpacing.md),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: AppColors.danger.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColors.danger.withValues(alpha: 0.3)),
          ),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Container(width: 6, height: 6, decoration: const BoxDecoration(color: AppColors.danger, shape: BoxShape.circle)),
            const SizedBox(width: 8),
            Text(
              '$highCount priority actions require your attention',
              style: AppTypography.textTheme.bodySmall?.copyWith(color: AppColors.lavender),
            ),
          ]),
        ),
      ],
    );
  }

  String _formatDate(DateTime d) {
    const months = ['January','February','March','April','May','June','July','August','September','October','November','December'];
    const days = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'];
    return '${days[d.weekday - 1]}, ${d.day} ${months[d.month - 1]} ${d.year}';
  }
}

class _AssistantEntryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GlassCard(
      child: Row(children: [
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Intelligence Assistant', style: AppTypography.sectionLabel),
            const SizedBox(height: AppSpacing.sm),
            Text(
              'What do you need to know today, Minister?',
              style: AppTypography.textTheme.headlineSmall,
            ),
            const SizedBox(height: AppSpacing.sm),
            Text('Analyse reports, draft communications, search intelligence',
                style: AppTypography.textTheme.bodySmall),
          ]),
        ),
        const SizedBox(width: AppSpacing.base),
        PremiumButton(
          label: 'Open Assistant',
          icon: Icons.psychology_outlined,
          onPressed: () => context.go('/assistant'),
        ),
      ]),
    );
  }
}

class _PriorityActionsRow extends StatelessWidget {
  const _PriorityActionsRow({required this.items});
  final List<PriorityAction> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: AppSpacing.sm),
        itemBuilder: (_, i) => _PriorityActionCard(item: items[i]),
      ),
    );
  }
}

class _PriorityActionCard extends StatelessWidget {
  const _PriorityActionCard({required this.item});
  final PriorityAction item;

  Color get _urgencyColor => switch (item.urgency) {
        UrgencyLevel.high => AppColors.gold,
        UrgencyLevel.medium => AppColors.secondaryText,
        UrgencyLevel.low => AppColors.mutedText,
      };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: ExecutiveCard(
        goldAccent: item.urgency == UrgencyLevel.high,
        padding: const EdgeInsets.all(AppSpacing.base),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          StatusBadge(label: item.department.split(' ').last, color: _urgencyColor),
          const SizedBox(height: AppSpacing.sm),
          Text(item.title, style: AppTypography.textTheme.titleMedium, maxLines: 2, overflow: TextOverflow.ellipsis),
          const SizedBox(height: AppSpacing.sm),
          Text(_timeLabel(item.dueAt), style: AppTypography.textTheme.bodySmall),
        ]),
      ),
    );
  }

  String _timeLabel(DateTime dt) {
    final diff = dt.difference(DateTime.now());
    if (diff.inHours < 1) return 'Due in ${diff.inMinutes}m';
    if (diff.inHours < 24) return 'Due in ${diff.inHours}h';
    return 'Due in ${diff.inDays}d';
  }
}

class _IntelligenceGrid extends StatelessWidget {
  const _IntelligenceGrid({required this.items, required this.isTablet});
  final List<IntelligenceUpdate> items;
  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    if (!isTablet) {
      return Column(
        children: items.map((item) => Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.sm),
          child: _IntelligenceCard(item: item),
        )).toList(),
      );
    }
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, crossAxisSpacing: AppSpacing.sm,
        mainAxisSpacing: AppSpacing.sm, childAspectRatio: 2.4,
      ),
      itemCount: items.length,
      itemBuilder: (_, i) => _IntelligenceCard(item: items[i]),
    );
  }
}

class _IntelligenceCard extends StatelessWidget {
  const _IntelligenceCard({required this.item});
  final IntelligenceUpdate item;

  @override
  Widget build(BuildContext context) {
    return ExecutiveCard(
      padding: const EdgeInsets.all(AppSpacing.base),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(children: [
            StatusBadge(label: item.category, color: AppColors.accent),
            const Spacer(),
            if (item.isUrgent) const StatusBadge(label: 'Urgent', color: AppColors.danger),
          ]),
          const SizedBox(height: AppSpacing.sm),
          Text(item.headline, style: AppTypography.textTheme.titleMedium, maxLines: 2, overflow: TextOverflow.ellipsis),
          const SizedBox(height: AppSpacing.sm),
          Row(children: [
            Text(item.source, style: AppTypography.textTheme.bodySmall),
            const Spacer(),
            _ConfidenceBar(value: item.confidence),
          ]),
        ],
      ),
    );
  }
}

class _ConfidenceBar extends StatelessWidget {
  const _ConfidenceBar({required this.value});
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: 48, height: 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: AppColors.border,
        ),
        child: FractionallySizedBox(
          widthFactor: value,
          alignment: Alignment.centerLeft,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Color.lerp(AppColors.goldDim, AppColors.gold, value),
            ),
          ),
        ),
      ),
      const SizedBox(width: 6),
      Text('${(value * 100).round()}%', style: AppTypography.textTheme.labelSmall?.copyWith(color: AppColors.goldDim)),
    ]);
  }
}

class _MeetingCard extends StatelessWidget {
  const _MeetingCard({required this.meeting});
  final UpcomingMeeting meeting;

  @override
  Widget build(BuildContext context) {
    return ExecutiveCard(
      padding: const EdgeInsets.all(AppSpacing.base),
      child: Row(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(color: AppColors.surfaceElevated, borderRadius: BorderRadius.circular(4)),
          child: Text(_timeStr(meeting.time), style: AppTypography.textTheme.labelLarge?.copyWith(color: AppColors.gold)),
        ),
        const SizedBox(width: AppSpacing.base),
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(meeting.title, style: AppTypography.textTheme.titleMedium, maxLines: 1, overflow: TextOverflow.ellipsis),
          const SizedBox(height: 4),
          Row(children: [
            Icon(Icons.people_outline, size: 12, color: AppColors.secondaryText),
            const SizedBox(width: 4),
            Text('${meeting.participantCount}', style: AppTypography.textTheme.bodySmall),
            const SizedBox(width: AppSpacing.sm),
            Icon(Icons.location_on_outlined, size: 12, color: AppColors.secondaryText),
            const SizedBox(width: 4),
            Expanded(child: Text(meeting.location, style: AppTypography.textTheme.bodySmall, overflow: TextOverflow.ellipsis)),
          ]),
        ])),
        const SizedBox(width: AppSpacing.sm),
        StatusBadge(label: '${meeting.durationMinutes}m', color: AppColors.secondaryText),
      ]),
    );
  }

  String _timeStr(DateTime dt) {
    final h = dt.hour % 12 == 0 ? 12 : dt.hour % 12;
    final m = dt.minute.toString().padLeft(2, '0');
    final ampm = dt.hour < 12 ? 'AM' : 'PM';
    return '$h:$m\n$ampm';
  }
}

class _TasksSection extends StatelessWidget {
  const _TasksSection({required this.tasks});
  final List<PendingTask> tasks;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(label: 'Pending Tasks'),
        const SizedBox(height: AppSpacing.base),
        ...tasks.take(4).map((t) => Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.sm),
          child: _TaskCard(task: t),
        )),
      ],
    );
  }
}

class _TaskCard extends StatelessWidget {
  const _TaskCard({required this.task});
  final PendingTask task;

  @override
  Widget build(BuildContext context) {
    return ExecutiveCard(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.base, vertical: AppSpacing.md),
      child: Row(children: [
        Container(
          width: 8, height: 8,
          decoration: BoxDecoration(
            color: task.priority == UrgencyLevel.high ? AppColors.gold : AppColors.border,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: AppSpacing.md),
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(task.title, style: AppTypography.textTheme.titleSmall?.copyWith(color: AppColors.primaryText), maxLines: 1, overflow: TextOverflow.ellipsis),
          const SizedBox(height: 2),
          Text(task.assignedTo, style: AppTypography.textTheme.bodySmall),
        ])),
        StatusBadge(
          label: task.status == TaskStatus.inProgress ? 'In Progress' : 'Pending',
          color: task.status == TaskStatus.inProgress ? AppColors.success : AppColors.mutedText,
        ),
      ]),
    );
  }
}

class _DraftsSection extends StatelessWidget {
  const _DraftsSection({required this.drafts});
  final List<RecentDraft> drafts;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(label: 'Recent Drafts', actionLabel: 'Open Studio', onAction: () => context.go('/drafting')),
        const SizedBox(height: AppSpacing.base),
        ...drafts.take(3).map((d) => Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.sm),
          child: _DraftCard(draft: d),
        )),
      ],
    );
  }
}

class _DraftCard extends StatelessWidget {
  const _DraftCard({required this.draft});
  final RecentDraft draft;

  @override
  Widget build(BuildContext context) {
    return ExecutiveCard(
      onTap: () => context.go('/drafting'),
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.base, vertical: AppSpacing.md),
      child: Row(children: [
        const Icon(Icons.edit_document, size: 16, color: AppColors.goldDim),
        const SizedBox(width: AppSpacing.md),
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(draft.title, style: AppTypography.textTheme.titleSmall?.copyWith(color: AppColors.primaryText), maxLines: 1, overflow: TextOverflow.ellipsis),
          const SizedBox(height: 2),
          Text('${draft.type} · ${draft.wordCount} words', style: AppTypography.textTheme.bodySmall),
        ])),
        StatusBadge(
          label: draft.status.name,
          color: draft.status == DraftStatus.approved ? AppColors.success : AppColors.goldDim,
        ),
      ]),
    );
  }
}

class _QuickAccessGrid extends StatelessWidget {
  const _QuickAccessGrid({required this.items});
  final List<QuickAccessItem> items;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, crossAxisSpacing: AppSpacing.sm,
        mainAxisSpacing: AppSpacing.sm, childAspectRatio: 1.5,
      ),
      itemCount: items.length,
      itemBuilder: (_, i) {
        final item = items[i];
        return GlassCard(
          padding: const EdgeInsets.all(AppSpacing.md),
          onTap: () => context.go(item.route),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(item.icon, color: AppColors.gold, size: 22),
            const SizedBox(height: AppSpacing.sm),
            Text(item.label, style: AppTypography.textTheme.bodySmall?.copyWith(color: AppColors.primaryText), textAlign: TextAlign.center, maxLines: 2),
          ]),
        );
      },
    );
  }
}

class _DashboardSkeleton extends StatelessWidget {
  const _DashboardSkeleton();

  @override
  Widget build(BuildContext context) {
    final h = AppSpacing.pageHorizontal;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: h, vertical: 24),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ShimmerWidget(width: 280, height: 36),
        const SizedBox(height: 10),
        ShimmerWidget(width: 180, height: 14),
        const SizedBox(height: AppSpacing.sectionGap),
        ShimmerCard(height: 80),
        const SizedBox(height: AppSpacing.sectionGap),
        ...List.generate(4, (_) => Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.sm),
          child: ShimmerCard(height: 80),
        )),
      ]),
    );
  }
}
