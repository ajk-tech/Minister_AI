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
          error: (e, _) => Center(child: Text('Error: $e', style: AppTypography.textTheme.bodyMedium)),
          data: (data) => isTablet
              ? Row(children: [
                  _BriefingRegisterPanel(data: data),
                  const AppDivider(vertical: true),
                  Expanded(child: _AgentWorkspace(data: data)),
                ])
              : _AgentWorkspace(data: data),
        ),
      ),
    );
  }
}

// ── Left Panel: Briefing Register ────────────────────────────────────────────

class _BriefingRegisterPanel extends ConsumerWidget {
  const _BriefingRegisterPanel({required this.data});
  final AssistantState data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allCards = data.sessions.expand((s) => s.cards).toList()
      ..sort((a, b) => b.timestamp.compareTo(a.timestamp));

    return Container(
      width: 300,
      color: AppColors.surface,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Agent status header
        Padding(
          padding: const EdgeInsets.fromLTRB(AppSpacing.base, AppSpacing.base, AppSpacing.base, AppSpacing.md),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              _PulsingDot(active: data.isGenerating),
              const SizedBox(width: 8),
              Text(
                data.isGenerating ? 'AGENT ACTIVE' : 'AGENT ONLINE',
                style: AppTypography.sectionLabel.copyWith(
                  color: data.isGenerating ? AppColors.gold : AppColors.success,
                  letterSpacing: 2,
                ),
              ),
            ]),
            const SizedBox(height: AppSpacing.sm),
            Text('Briefing Register', style: AppTypography.textTheme.titleLarge),
            Text('Completed intelligence briefs', style: AppTypography.textTheme.bodySmall),
          ]),
        ),
        const AppDivider(),
        Expanded(
          child: allCards.isEmpty
              ? Center(
                  child: Text('No briefs on record', style: AppTypography.textTheme.bodySmall),
                )
              : ListView.separated(
                  padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
                  itemCount: allCards.length,
                  separatorBuilder: (_, __) => const AppDivider(),
                  itemBuilder: (_, i) => _RegisterEntry(card: allCards[i]),
                ),
        ),
      ]),
    );
  }
}

class _RegisterEntry extends StatelessWidget {
  const _RegisterEntry({required this.card});
  final BriefingCard card;

  Color get _typeColor => switch (card.responseType) {
        BriefingResponseType.intelligence => AppColors.typeIntelligence,
        BriefingResponseType.analysis => AppColors.typeReport,
        BriefingResponseType.summary => AppColors.typePolicy,
        BriefingResponseType.draft => AppColors.typeMemo,
        BriefingResponseType.actionItems => AppColors.typeSpeech,
      };

  String get _typeLabel => switch (card.responseType) {
        BriefingResponseType.intelligence => 'INTEL',
        BriefingResponseType.analysis => 'ANALYSIS',
        BriefingResponseType.summary => 'SUMMARY',
        BriefingResponseType.draft => 'DRAFT',
        BriefingResponseType.actionItems => 'ACTIONS',
      };

  String _formatDate(DateTime dt) {
    const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    return '${dt.day} ${months[dt.month - 1]} ${dt.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.base, vertical: AppSpacing.md),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: _typeColor.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: _typeColor.withValues(alpha: 0.5)),
            ),
            child: Text(_typeLabel, style: AppTypography.textTheme.labelSmall?.copyWith(color: _typeColor, letterSpacing: 1)),
          ),
          const Spacer(),
          Text(_formatDate(card.timestamp), style: AppTypography.textTheme.labelSmall),
        ]),
        const SizedBox(height: 6),
        Text(card.headline, style: AppTypography.textTheme.bodySmall?.copyWith(color: AppColors.primaryText), maxLines: 2, overflow: TextOverflow.ellipsis),
        const SizedBox(height: 4),
        Text(card.query, style: AppTypography.textTheme.labelSmall?.copyWith(fontStyle: FontStyle.italic), maxLines: 1, overflow: TextOverflow.ellipsis),
      ]),
    );
  }
}

// ── Right Panel: Agent Workspace ─────────────────────────────────────────────

class _AgentWorkspace extends ConsumerStatefulWidget {
  const _AgentWorkspace({required this.data});
  final AssistantState data;

  @override
  ConsumerState<_AgentWorkspace> createState() => _AgentWorkspaceState();
}

class _AgentWorkspaceState extends ConsumerState<_AgentWorkspace> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _submit() {
    final q = _controller.text.trim();
    if (q.isEmpty) return;
    ref.read(assistantNotifierProvider.notifier).submitQuery(q);
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    final data = widget.data;
    final latestCard = data.sessions.expand((s) => s.cards).lastOrNull;

    return Column(children: [
      // Top commission bar
      _CommissionBar(controller: _controller, isGenerating: data.isGenerating, onSubmit: _submit),
      const AppDivider(),
      // Main content area
      Expanded(
        child: data.isGenerating
            ? _GeneratingWorkflow(steps: data.generatingSteps ?? [])
            : latestCard != null
                ? _CompletedBrief(card: latestCard)
                : _IdleState(onCommission: (q) {
                    _controller.text = q;
                    _submit();
                  }),
      ),
    ]);
  }
}

class _CommissionBar extends StatelessWidget {
  const _CommissionBar({required this.controller, required this.isGenerating, required this.onSubmit});

  final TextEditingController controller;
  final bool isGenerating;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl, vertical: AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.surface,
        boxShadow: isGenerating
            ? [BoxShadow(color: AppColors.accent.withValues(alpha: 0.15), blurRadius: 20, spreadRadius: 2)]
            : null,
      ),
      child: Row(children: [
        // Agent avatar
        _AgentAvatar(pulsing: isGenerating),
        const SizedBox(width: AppSpacing.base),
        // Borderless text field
        Expanded(
          child: TextField(
            controller: controller,
            enabled: !isGenerating,
            style: AppTypography.textTheme.bodyLarge?.copyWith(color: AppColors.primaryText),
            decoration: InputDecoration(
              hintText: 'Commission a brief...',
              hintStyle: AppTypography.textTheme.bodyMedium,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.zero,
            ),
            onSubmitted: isGenerating ? null : (_) => onSubmit(),
          ),
        ),
        const SizedBox(width: AppSpacing.base),
        // Commission button
        AnimatedOpacity(
          opacity: isGenerating ? 0.45 : 1.0,
          duration: const Duration(milliseconds: 200),
          child: ElevatedButton(
            onPressed: isGenerating ? null : onSubmit,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.accent,
              foregroundColor: AppColors.primaryText,
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.base, vertical: AppSpacing.md),
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            ),
            child: Text('Commission', style: AppTypography.textTheme.labelLarge?.copyWith(color: AppColors.primaryText)),
          ),
        ),
      ]),
    );
  }
}

// ── Idle State ────────────────────────────────────────────────────────────────

const _suggestions = [
  'Summarise yesterday\'s cabinet decisions',
  'Brief me on infrastructure bill progress',
  'What are the key risks in the trade proposal?',
  'Analyse the latest polling data',
  'Draft a response to the opposition statement',
  'Intelligence summary: regional security update',
];

class _IdleState extends StatelessWidget {
  const _IdleState({required this.onCommission});
  final ValueChanged<String> onCommission;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Agent identity header
        Row(children: [
          Container(
            width: 48, height: 48,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [AppColors.accent, AppColors.lavenderDim],
                begin: Alignment.topLeft, end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.auto_awesome, color: AppColors.primaryText, size: 24),
          ),
          const SizedBox(width: AppSpacing.base),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Intelligence Agent', style: AppTypography.textTheme.headlineMedium),
            Text('Personal briefing & analysis workspace', style: AppTypography.textTheme.bodySmall),
          ]),
        ]),
        const SizedBox(height: AppSpacing.xl),
        // Capability rows
        ...[
          (Icons.search, 'Research & synthesis from classified and open sources'),
          (Icons.analytics_outlined, 'In-depth policy and intelligence analysis'),
          (Icons.edit_note_outlined, 'Draft communications and ministerial briefs'),
          (Icons.task_alt_outlined, 'Extract action items and key decisions'),
        ].map((cap) => Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.sm),
          child: Row(children: [
            Icon(cap.$1, size: 16, color: AppColors.accentDim),
            const SizedBox(width: AppSpacing.sm),
            Text(cap.$2, style: AppTypography.textTheme.bodySmall?.copyWith(color: AppColors.secondaryText)),
          ]),
        )),
        const SizedBox(height: AppSpacing.xl),
        Text('SUGGESTED COMMISSIONS', style: AppTypography.sectionLabel),
        const SizedBox(height: AppSpacing.md),
        Wrap(
          spacing: AppSpacing.sm,
          runSpacing: AppSpacing.sm,
          children: _suggestions.map((s) => _SuggestionTile(text: s, onTap: () => onCommission(s))).toList(),
        ),
      ]),
    );
  }
}

class _SuggestionTile extends StatelessWidget {
  const _SuggestionTile({required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.base, vertical: AppSpacing.sm),
        decoration: BoxDecoration(
          color: AppColors.surfaceElevated,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.border),
        ),
        child: Text(text, style: AppTypography.textTheme.bodySmall?.copyWith(color: AppColors.primaryText)),
      ),
    );
  }
}

// ── Generating State ──────────────────────────────────────────────────────────

class _GeneratingWorkflow extends StatelessWidget {
  const _GeneratingWorkflow({required this.steps});
  final List<AgentStep> steps;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 560),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.xl),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Processing Commission', style: AppTypography.textTheme.headlineMedium),
            const SizedBox(height: 4),
            Text('Agent is preparing your intelligence brief', style: AppTypography.textTheme.bodySmall),
            const SizedBox(height: AppSpacing.xxl),
            // Workflow steps
            ...steps.map((step) => _WorkflowStep(step: step)),
            const SizedBox(height: AppSpacing.xl),
            // Shimmer preview
            _ShimmerBriefPreview(),
          ]),
        ),
      ),
    );
  }
}

class _WorkflowStep extends StatelessWidget {
  const _WorkflowStep({required this.step});
  final AgentStep step;

  @override
  Widget build(BuildContext context) {
    final isActive = step.status == AgentStepStatus.active;
    final isDone = step.status == AgentStepStatus.completed;
    final color = isDone ? AppColors.success : isActive ? AppColors.accent : AppColors.mutedText;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(children: [
        SizedBox(
          width: 20, height: 20,
          child: isDone
              ? const Icon(Icons.check_circle, size: 18, color: AppColors.success)
              : isActive
                  ? const SizedBox(width: 16, height: 16, child: CircularProgressIndicator(strokeWidth: 1.8, color: AppColors.accent))
                  : Container(width: 8, height: 8, margin: const EdgeInsets.all(6), decoration: const BoxDecoration(color: AppColors.mutedText, shape: BoxShape.circle)),
        ),
        const SizedBox(width: AppSpacing.sm),
        Text(step.label, style: AppTypography.textTheme.labelLarge?.copyWith(color: color)),
      ]),
    );
  }
}

class _ShimmerBriefPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.base),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ShimmerWidget(width: 160, height: 10),
        const SizedBox(height: AppSpacing.md),
        ShimmerWidget(width: double.infinity, height: 18),
        const SizedBox(height: 8),
        ShimmerWidget(width: 320, height: 18),
        const SizedBox(height: AppSpacing.md),
        ShimmerWidget(width: double.infinity, height: 11),
        const SizedBox(height: 6),
        ShimmerWidget(width: double.infinity, height: 11),
        const SizedBox(height: 6),
        ShimmerWidget(width: 240, height: 11),
      ]),
    );
  }
}

// ── Completed State ───────────────────────────────────────────────────────────

class _CompletedBrief extends StatelessWidget {
  const _CompletedBrief({required this.card});
  final BriefingCard card;

  String get _classificationLabel => switch (card.responseType) {
        BriefingResponseType.intelligence => 'INTELLIGENCE REPORT',
        BriefingResponseType.analysis => 'ANALYTICAL BRIEF',
        BriefingResponseType.summary => 'INTELLIGENCE SUMMARY',
        BriefingResponseType.draft => 'DRAFT COMMUNICATION',
        BriefingResponseType.actionItems => 'ACTION ITEMS REGISTER',
      };

  String get _refCode => 'REF-${card.id.substring(card.id.length > 8 ? card.id.length - 8 : 0).toUpperCase()}';

  String _formatDateTime(DateTime dt) {
    const months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
    final h = dt.hour % 12 == 0 ? 12 : dt.hour % 12;
    final m = dt.minute.toString().padLeft(2, '0');
    return '${dt.day} ${months[dt.month - 1]} ${dt.year} · $h:$m ${dt.hour < 12 ? 'AM' : 'PM'}';
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // Classification banner
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
          decoration: const BoxDecoration(
            color: AppColors.accentSubtle,
            border: Border.symmetric(horizontal: BorderSide(color: AppColors.accentDim)),
          ),
          child: Text(
            _classificationLabel,
            textAlign: TextAlign.center,
            style: AppTypography.sectionLabel.copyWith(color: AppColors.accent, letterSpacing: 3),
          ),
        ),
        const SizedBox(height: AppSpacing.xl),

        // Commission reference block
        Container(
          padding: const EdgeInsets.all(AppSpacing.base),
          decoration: const BoxDecoration(
            border: Border(left: BorderSide(color: AppColors.accent, width: 3)),
            color: AppColors.surfaceElevated,
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Text('COMMISSION REFERENCE', style: AppTypography.sectionLabel),
              const Spacer(),
              Text(_refCode, style: AppTypography.textTheme.labelMedium?.copyWith(color: AppColors.accent)),
            ]),
            const SizedBox(height: 6),
            Text(card.query, style: AppTypography.textTheme.bodySmall?.copyWith(
              color: AppColors.secondaryText, fontStyle: FontStyle.italic,
            )),
            const SizedBox(height: 4),
            Text(_formatDateTime(card.timestamp), style: AppTypography.textTheme.labelSmall),
          ]),
        ),
        const SizedBox(height: AppSpacing.xl),

        // Headline in Cormorant Garamond
        Text(card.headline, style: GoogleFonts.cormorantGaramond(
          fontSize: 28, fontWeight: FontWeight.w600,
          color: AppColors.primaryText, height: 1.25,
        )),
        const SizedBox(height: AppSpacing.base),

        // Compact workflow record
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: card.agentSteps.asMap().entries.expand((e) {
              final step = e.value;
              return [
                if (e.key > 0)
                  Container(width: 20, height: 1, color: AppColors.accentDim),
                Row(mainAxisSize: MainAxisSize.min, children: [
                  Icon(Icons.check_circle, size: 12, color: AppColors.success),
                  const SizedBox(width: 4),
                  Text(step.label, style: AppTypography.textTheme.labelSmall?.copyWith(color: AppColors.success)),
                ]),
              ];
            }).toList(),
          ),
        ),
        const SizedBox(height: AppSpacing.base),
        const AppDivider(),
        const SizedBox(height: AppSpacing.base),

        // Body text
        Text(card.body, style: AppTypography.textTheme.bodyLarge?.copyWith(
          color: AppColors.primaryText.withValues(alpha: 0.9), height: 1.75,
        )),
        const SizedBox(height: AppSpacing.xl),

        // Numbered sources
        _NumberedSourcesPanel(sources: card.sources),
        const SizedBox(height: AppSpacing.xl),

        // Action buttons
        Row(children: [
          PremiumButton(
            label: 'Send to Drafting Studio',
            icon: Icons.drive_file_rename_outline,
            variant: PremiumButtonVariant.ghost,
            onPressed: () {},
          ),
          const SizedBox(width: AppSpacing.md),
          PremiumButton(
            label: 'Save to Register',
            icon: Icons.bookmark_border,
            variant: PremiumButtonVariant.text,
            onPressed: () {},
          ),
        ]),
      ]),
    );
  }
}

class _NumberedSourcesPanel extends StatelessWidget {
  const _NumberedSourcesPanel({required this.sources});
  final List<SourceReference> sources;

  IconData _iconForType(SourceType t) => switch (t) {
        SourceType.report => Icons.description_outlined,
        SourceType.policy => Icons.policy_outlined,
        SourceType.web => Icons.language_outlined,
        SourceType.internal => Icons.lock_outline,
      };

  @override
  Widget build(BuildContext context) {
    if (sources.isEmpty) return const SizedBox.shrink();
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('SOURCES', style: AppTypography.sectionLabel),
      const SizedBox(height: AppSpacing.sm),
      Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
          border: Border.all(color: AppColors.border),
        ),
        child: Column(
          children: sources.asMap().entries.map((e) {
            final i = e.key;
            final src = e.value;
            return Column(children: [
              if (i > 0) const AppDivider(),
              Padding(
                padding: const EdgeInsets.all(AppSpacing.base),
                child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    width: 22, height: 22,
                    decoration: BoxDecoration(
                      color: AppColors.accentSubtle,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(child: Text('${i + 1}', style: AppTypography.textTheme.labelSmall?.copyWith(color: AppColors.accent))),
                  ),
                  const SizedBox(width: AppSpacing.sm),
                  Icon(_iconForType(src.type), size: 14, color: AppColors.accentDim),
                  const SizedBox(width: AppSpacing.sm),
                  Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(src.title, style: AppTypography.textTheme.labelLarge),
                    const SizedBox(height: 2),
                    Text(src.excerpt, style: AppTypography.textTheme.bodySmall, maxLines: 2, overflow: TextOverflow.ellipsis),
                  ])),
                ]),
              ),
            ]);
          }).toList(),
        ),
      ),
    ]);
  }
}

// ── Shared helpers ────────────────────────────────────────────────────────────

class _AgentAvatar extends StatefulWidget {
  const _AgentAvatar({required this.pulsing});
  final bool pulsing;

  @override
  State<_AgentAvatar> createState() => _AgentAvatarState();
}

class _AgentAvatarState extends State<_AgentAvatar> with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(vsync: this, duration: const Duration(milliseconds: 900))..repeat(reverse: true);
    _scale = Tween<double>(begin: 1.0, end: 1.12).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scale,
      builder: (_, child) => Transform.scale(
        scale: widget.pulsing ? _scale.value : 1.0,
        child: child,
      ),
      child: Container(
        width: 36, height: 36,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: widget.pulsing
                ? [AppColors.gold, AppColors.accent]
                : [AppColors.accent, AppColors.lavenderDim],
            begin: Alignment.topLeft, end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(Icons.auto_awesome, size: 18, color: AppColors.primaryText),
      ),
    );
  }
}

class _PulsingDot extends StatefulWidget {
  const _PulsingDot({required this.active});
  final bool active;

  @override
  State<_PulsingDot> createState() => _PulsingDotState();
}

class _PulsingDotState extends State<_PulsingDot> with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(vsync: this, duration: const Duration(milliseconds: 800))..repeat(reverse: true);
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = widget.active ? AppColors.gold : AppColors.success;
    return AnimatedBuilder(
      animation: _ctrl,
      builder: (_, __) => Container(
        width: 7, height: 7,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.active ? color.withValues(alpha: 0.4 + _ctrl.value * 0.6) : color,
        ),
      ),
    );
  }
}
