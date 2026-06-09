import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/models/assistant_models.dart';
import '../providers/assistant_provider.dart';

class AssistantScreen extends ConsumerWidget {
  const AssistantScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(assistantNotifierProvider);
    final isTablet = ResponsiveBreakpoints.of(context).largerThan(MOBILE);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: state.when(
          loading: () => const Center(child: CircularProgressIndicator(color: AppColors.accent)),
          error: (e, _) => Center(child: Text('Error: $e')),
          data: (data) => isTablet
              ? Row(children: [
                  SizedBox(width: 280, child: _SessionListPanel(data: data)),
                  const AppDivider(vertical: true),
                  Expanded(child: _ActiveSessionPanel(data: data)),
                ])
              : _ActiveSessionPanel(data: data),
        ),
      ),
    );
  }
}

class _SessionListPanel extends ConsumerWidget {
  const _SessionListPanel({required this.data});
  final AssistantState data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: AppColors.surface,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(AppSpacing.base),
          child: Column(children: [
            Row(children: [
              const Icon(Icons.psychology_outlined, color: AppColors.accent, size: 18),
              const SizedBox(width: 8),
              Text('Intelligence Sessions', style: AppTypography.sectionLabel),
            ]),
            const SizedBox(height: AppSpacing.md),
            SizedBox(
              width: double.infinity,
              child: PremiumButton(
                label: 'New Request',
                icon: Icons.add,
                variant: PremiumButtonVariant.ghost,
                compact: true,
                onPressed: () => ref.read(assistantNotifierProvider.notifier).newSession(),
              ),
            ),
          ]),
        ),
        const AppDivider(),
        Expanded(
          child: ListView.separated(
            itemCount: data.sessions.length,
            separatorBuilder: (_, __) => const AppDivider(),
            itemBuilder: (_, i) {
              final session = data.sessions[i];
              final isActive = session.id == data.activeSessionId;
              return _SessionTile(session: session, isActive: isActive);
            },
          ),
        ),
      ]),
    );
  }
}

class _SessionTile extends ConsumerWidget {
  const _SessionTile({required this.session, required this.isActive});
  final AssistantSession session;
  final bool isActive;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => ref.read(assistantNotifierProvider.notifier).selectSession(session.id),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.base, vertical: AppSpacing.md),
        decoration: BoxDecoration(
          color: isActive ? AppColors.accentSubtle : Colors.transparent,
          border: Border(
            left: BorderSide(
              color: isActive ? AppColors.accent : Colors.transparent,
              width: 3,
            ),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(session.title, style: AppTypography.textTheme.titleSmall?.copyWith(
            color: isActive ? AppColors.primaryText : AppColors.secondaryText,
          ), maxLines: 2, overflow: TextOverflow.ellipsis),
          const SizedBox(height: 4),
          Row(children: [
            if (session.cards.isNotEmpty)
              StatusBadge(
                label: _responseTypeLabel(session.cards.last.responseType),
                color: AppColors.accentDim,
              ),
            const Spacer(),
            Text(_formatDate(session.createdAt), style: AppTypography.textTheme.labelSmall),
          ]),
        ]),
      ),
    );
  }

  String _responseTypeLabel(BriefingResponseType t) => switch (t) {
        BriefingResponseType.summary => 'Summary',
        BriefingResponseType.analysis => 'Analysis',
        BriefingResponseType.draft => 'Draft',
        BriefingResponseType.actionItems => 'Actions',
        BriefingResponseType.intelligence => 'Intelligence',
      };

  String _formatDate(DateTime d) {
    final diff = DateTime.now().difference(d);
    if (diff.inHours < 1) return '${diff.inMinutes}m ago';
    if (diff.inHours < 24) return '${diff.inHours}h ago';
    return '${diff.inDays}d ago';
  }
}

class _ActiveSessionPanel extends ConsumerWidget {
  const _ActiveSessionPanel({required this.data});
  final AssistantState data;

  AssistantSession? get _session =>
      data.sessions.where((s) => s.id == data.activeSessionId).firstOrNull;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final session = _session;
    if (session == null) {
      return const Center(child: Text('Select or create a session', style: TextStyle(color: AppColors.secondaryText)));
    }

    final queryController = TextEditingController();

    return Column(children: [
      // Header
      Container(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl, vertical: AppSpacing.md),
        decoration: const BoxDecoration(
          color: AppColors.surface,
          border: Border(bottom: BorderSide(color: AppColors.border)),
        ),
        child: Row(children: [
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(session.title, style: AppTypography.textTheme.headlineSmall),
            Text('${session.cards.length} briefing${session.cards.length == 1 ? '' : 's'}', style: AppTypography.textTheme.bodySmall),
          ])),
          StatusBadge(label: 'Intelligence Session', color: AppColors.accentDim),
        ]),
      ),
      // Cards
      Expanded(
        child: ListView.separated(
          padding: const EdgeInsets.all(AppSpacing.xl),
          itemCount: session.cards.length + (data.isGenerating ? 1 : 0),
          separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.base),
          itemBuilder: (_, i) {
            if (i == session.cards.length && data.isGenerating) {
              return _GeneratingCard(steps: data.generatingSteps ?? []);
            }
            return _BriefingCardWidget(card: session.cards[i]);
          },
        ),
      ),
      // Query input
      _QueryInputBar(
        controller: queryController,
        isGenerating: data.isGenerating,
        onSubmit: (query) {
          if (query.trim().isEmpty) return;
          ref.read(assistantNotifierProvider.notifier).submitQuery(query);
          queryController.clear();
        },
      ),
    ]);
  }
}

class _BriefingCardWidget extends StatelessWidget {
  const _BriefingCardWidget({required this.card});
  final BriefingCard card;

  String get _responseTypeLabel => switch (card.responseType) {
        BriefingResponseType.summary => 'Intelligence Summary',
        BriefingResponseType.analysis => 'Analytical Brief',
        BriefingResponseType.draft => 'Draft Communication',
        BriefingResponseType.actionItems => 'Action Items',
        BriefingResponseType.intelligence => 'Intelligence Report',
      };

  @override
  Widget build(BuildContext context) {
    return ExecutiveCard(
      goldAccent: true,
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Header
        Row(children: [
          StatusBadge(label: _responseTypeLabel, color: AppColors.accent),
          const Spacer(),
          Text(_formatTime(card.timestamp), style: AppTypography.textTheme.bodySmall),
        ]),
        const SizedBox(height: AppSpacing.base),
        // Query
        Container(
          padding: const EdgeInsets.all(AppSpacing.md),
          decoration: BoxDecoration(
            color: AppColors.surfaceElevated,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text('Q: ${card.query}', style: AppTypography.textTheme.bodySmall?.copyWith(
            color: AppColors.secondaryText, fontStyle: FontStyle.italic,
          )),
        ),
        const SizedBox(height: AppSpacing.base),
        // Headline
        Text(card.headline, style: GoogleFonts.cormorantGaramond(
          fontSize: 22, fontWeight: FontWeight.w600,
          color: AppColors.primaryText, height: 1.3,
        )),
        const SizedBox(height: AppSpacing.base),
        // Body
        Text(card.body, style: AppTypography.textTheme.bodyMedium?.copyWith(
          color: AppColors.primaryText.withValues(alpha: 0.85), height: 1.7,
        )),
        const SizedBox(height: AppSpacing.base),
        // Agent Steps
        _AgentStepsStrip(steps: card.agentSteps),
        const SizedBox(height: AppSpacing.sm),
        const AppDivider(),
        // Sources
        _SourcesPanel(sources: card.sources),
      ]),
    );
  }

  String _formatTime(DateTime dt) {
    final h = dt.hour % 12 == 0 ? 12 : dt.hour % 12;
    final m = dt.minute.toString().padLeft(2, '0');
    return '$h:$m ${dt.hour < 12 ? 'AM' : 'PM'}';
  }
}

class _AgentStepsStrip extends StatelessWidget {
  const _AgentStepsStrip({required this.steps});
  final List<AgentStep> steps;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: steps.asMap().entries.expand((entry) {
          final i = entry.key;
          final step = entry.value;
          final color = switch (step.status) {
            AgentStepStatus.completed => AppColors.accent,
            AgentStepStatus.active => AppColors.accent,
            AgentStepStatus.pending => AppColors.mutedText,
          };
          return [
            if (i > 0) Container(width: 24, height: 1, color: i <= steps.indexWhere((s) => s.status != AgentStepStatus.completed) ? AppColors.border : AppColors.accentDim),
            Row(mainAxisSize: MainAxisSize.min, children: [
              Container(
                width: 8, height: 8,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              ),
              const SizedBox(width: 5),
              Text(step.label, style: AppTypography.textTheme.labelMedium?.copyWith(color: color)),
            ]),
          ];
        }).toList(),
      ),
    );
  }
}

class _SourcesPanel extends StatelessWidget {
  const _SourcesPanel({required this.sources});
  final List<SourceReference> sources;

  IconData _iconForType(SourceType t) => switch (t) {
        SourceType.report => Icons.description_outlined,
        SourceType.policy => Icons.policy_outlined,
        SourceType.web => Icons.language_outlined,
        SourceType.internal => Icons.lock_outline,
      };

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.zero,
      title: Row(children: [
        Text('Sources', style: AppTypography.sectionLabel),
        const SizedBox(width: 8),
        StatusBadge(label: '${sources.length}', color: AppColors.secondaryText),
      ]),
      children: sources.map((src) => Padding(
        padding: const EdgeInsets.only(bottom: AppSpacing.sm),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Icon(_iconForType(src.type), size: 14, color: AppColors.accentDim),
          const SizedBox(width: AppSpacing.sm),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(src.title, style: AppTypography.textTheme.titleSmall?.copyWith(color: AppColors.primaryText)),
            const SizedBox(height: 2),
            Text(src.excerpt, style: AppTypography.textTheme.bodySmall, maxLines: 2, overflow: TextOverflow.ellipsis),
          ])),
        ]),
      )).toList(),
    );
  }
}

class _GeneratingCard extends StatelessWidget {
  const _GeneratingCard({required this.steps});
  final List<AgentStep> steps;

  @override
  Widget build(BuildContext context) {
    return ExecutiveCard(
      goldAccent: true,
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          const StatusBadge(label: 'Generating Brief', color: AppColors.accentDim),
          const Spacer(),
          const SizedBox(width: 12, height: 12, child: CircularProgressIndicator(strokeWidth: 1.5, color: AppColors.accent)),
        ]),
        const SizedBox(height: AppSpacing.base),
        ShimmerWidget(width: 300, height: 22),
        const SizedBox(height: AppSpacing.base),
        ShimmerWidget(width: double.infinity, height: 12),
        const SizedBox(height: 6),
        ShimmerWidget(width: double.infinity, height: 12),
        const SizedBox(height: 6),
        ShimmerWidget(width: 240, height: 12),
        const SizedBox(height: AppSpacing.base),
        if (steps.isNotEmpty) _AgentStepsStrip(steps: steps),
      ]),
    );
  }
}

class _QueryInputBar extends StatelessWidget {
  const _QueryInputBar({
    required this.controller,
    required this.isGenerating,
    required this.onSubmit,
  });

  final TextEditingController controller;
  final bool isGenerating;
  final ValueChanged<String> onSubmit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl, vertical: AppSpacing.base),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(top: BorderSide(color: AppColors.border)),
      ),
      child: Row(children: [
        Expanded(
          child: TextField(
            controller: controller,
            enabled: !isGenerating,
            style: AppTypography.textTheme.bodyLarge?.copyWith(color: AppColors.primaryText),
            decoration: InputDecoration(
              hintText: 'Ask a question or give an instruction...',
              hintStyle: AppTypography.textTheme.bodyMedium,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: const BorderSide(color: AppColors.border)),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: const BorderSide(color: AppColors.border)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: const BorderSide(color: AppColors.accent, width: 1.5)),
              contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.base, vertical: AppSpacing.md),
              filled: true, fillColor: AppColors.surfaceElevated,
            ),
            onSubmitted: isGenerating ? null : onSubmit,
          ),
        ),
        const SizedBox(width: AppSpacing.sm),
        AnimatedOpacity(
          opacity: isGenerating ? 0.4 : 1.0,
          duration: const Duration(milliseconds: 200),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.accent,
              borderRadius: BorderRadius.circular(4),
            ),
            child: IconButton(
              icon: const Icon(Icons.send, size: 18, color: AppColors.background),
              onPressed: isGenerating ? null : () => onSubmit(controller.text),
            ),
          ),
        ),
      ]),
    );
  }
}
