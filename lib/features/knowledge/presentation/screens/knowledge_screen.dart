import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/models/knowledge_models.dart';
import '../providers/knowledge_provider.dart';

class KnowledgeScreen extends ConsumerWidget {
  const KnowledgeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(knowledgeNotifierProvider);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(children: [
          _SearchHeader(state: state),
          const AppDivider(),
          Expanded(child: _ResultsArea(state: state)),
        ]),
      ),
    );
  }
}

class _SearchHeader extends ConsumerStatefulWidget {
  const _SearchHeader({required this.state});
  final SearchState state;

  @override
  ConsumerState<_SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends ConsumerState<_SearchHeader> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Title bar
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl, vertical: AppSpacing.base),
        child: Row(children: [
          const Icon(Icons.search, color: AppColors.goldDim, size: 18),
          const SizedBox(width: 8),
          Text('Intelligence Repository', style: AppTypography.sectionLabel),
          const Spacer(),
          StatusBadge(label: '15 documents', color: AppColors.secondaryText),
        ]),
      ),
      // Search bar
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
        child: TextField(
          controller: _controller,
          style: AppTypography.textTheme.bodyLarge?.copyWith(color: AppColors.primaryText),
          decoration: InputDecoration(
            hintText: 'Search intelligence, reports, and documents...',
            prefixIcon: const Icon(Icons.search, color: AppColors.secondaryText, size: 18),
            suffixIcon: widget.state.query.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear, size: 16, color: AppColors.secondaryText),
                    onPressed: () {
                      _controller.clear();
                      ref.read(knowledgeNotifierProvider.notifier).clearSearch();
                    },
                  )
                : null,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: const BorderSide(color: AppColors.border)),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: const BorderSide(color: AppColors.border)),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4), borderSide: const BorderSide(color: AppColors.accent, width: 1.5)),
            filled: true, fillColor: AppColors.surfaceElevated,
            contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacing.base, vertical: AppSpacing.md),
          ),
          onChanged: (q) => ref.read(knowledgeNotifierProvider.notifier).search(q),
        ),
      ),
      const SizedBox(height: AppSpacing.md),
      // Filter strip
      _FilterStrip(state: widget.state),
      const SizedBox(height: AppSpacing.sm),
    ]);
  }
}

class _FilterStrip extends ConsumerWidget {
  const _FilterStrip({required this.state});
  final SearchState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 36,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl),
        children: [
          ...KnowledgeDocumentType.values.map((type) {
            final isSelected = state.filters.selectedTypes.contains(type);
            return Padding(
              padding: const EdgeInsets.only(right: AppSpacing.sm),
              child: GestureDetector(
                onTap: () {
                  final current = Set<KnowledgeDocumentType>.from(state.filters.selectedTypes);
                  isSelected ? current.remove(type) : current.add(type);
                  ref.read(knowledgeNotifierProvider.notifier).updateFilters(
                    state.filters.copyWith(selectedTypes: current),
                  );
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: isSelected ? type.color.withValues(alpha: 0.2) : AppColors.surfaceElevated,
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      color: isSelected ? type.color : AppColors.border,
                      width: isSelected ? 1.5 : 1,
                    ),
                  ),
                  child: Text(type.label, style: AppTypography.badgeLabel.copyWith(
                    color: isSelected ? type.color : AppColors.secondaryText,
                  )),
                ),
              ),
            );
          }),
          if (state.filters.selectedTypes.isNotEmpty)
            GestureDetector(
              onTap: () => ref.read(knowledgeNotifierProvider.notifier).updateFilters(const SearchFilters()),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Text('Clear', style: AppTypography.badgeLabel.copyWith(color: AppColors.accent)),
              ),
            ),
        ],
      ),
    );
  }
}

class _ResultsArea extends ConsumerWidget {
  const _ResultsArea({required this.state});
  final SearchState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return switch (state.status) {
      SearchStatus.idle => const _WelcomeState(),
      SearchStatus.searching => const _SkeletonResults(),
      SearchStatus.done => _ResultsList(results: state.results, query: state.query),
      SearchStatus.empty => const _EmptyState(),
    };
  }
}

class _WelcomeState extends ConsumerWidget {
  const _WelcomeState();

  static const _suggested = ['infrastructure', 'smart cities', 'G20', 'monsoon', 'PMAY', 'budget'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const Icon(Icons.search, color: AppColors.goldDim, size: 48),
        const SizedBox(height: AppSpacing.base),
        Text('Search the Intelligence Repository', style: AppTypography.textTheme.headlineSmall),
        const SizedBox(height: AppSpacing.sm),
        Text('Reports, policies, legislation, intelligence briefs', style: AppTypography.textTheme.bodyMedium),
        const SizedBox(height: AppSpacing.xl),
        Wrap(
          spacing: AppSpacing.sm,
          runSpacing: AppSpacing.sm,
          alignment: WrapAlignment.center,
          children: _suggested.map((s) => GestureDetector(
            onTap: () => ref.read(knowledgeNotifierProvider.notifier).search(s),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.surfaceElevated,
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: AppColors.border),
              ),
              child: Text(s, style: AppTypography.textTheme.bodySmall?.copyWith(color: AppColors.primaryText)),
            ),
          )).toList(),
        ),
      ]),
    );
  }
}

class _SkeletonResults extends StatelessWidget {
  const _SkeletonResults();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(AppSpacing.xl),
      itemCount: 4,
      separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.sm),
      itemBuilder: (_, __) => const ShimmerCard(height: 130),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ExecutiveCard(
        padding: const EdgeInsets.all(AppSpacing.xxxl),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Icon(Icons.search_off, color: AppColors.mutedText, size: 40),
          const SizedBox(height: AppSpacing.base),
          Text('No intelligence found', style: AppTypography.textTheme.headlineSmall),
          const SizedBox(height: AppSpacing.sm),
          Text('Try broader search terms or remove filters', style: AppTypography.textTheme.bodyMedium),
        ]),
      ),
    );
  }
}

class _ResultsList extends StatelessWidget {
  const _ResultsList({required this.results, required this.query});
  final List<KnowledgeDocument> results;
  final String query;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl, vertical: AppSpacing.sm),
        child: Row(children: [
          Text('${results.length} result${results.length == 1 ? '' : 's'}', style: AppTypography.textTheme.bodySmall),
        ]),
      ),
      Expanded(
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(AppSpacing.xl, 0, AppSpacing.xl, AppSpacing.xl),
          itemCount: results.length,
          separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.sm),
          itemBuilder: (_, i) => _IntelligenceResultCard(doc: results[i], query: query),
        ),
      ),
    ]);
  }
}

class _IntelligenceResultCard extends StatelessWidget {
  const _IntelligenceResultCard({required this.doc, required this.query});
  final KnowledgeDocument doc;
  final String query;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showPreview(context),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(AppSpacing.cardRadius),
          border: Border(
            left: BorderSide(color: doc.type.color, width: 4),
            top: const BorderSide(color: AppColors.border),
            right: const BorderSide(color: AppColors.border),
            bottom: const BorderSide(color: AppColors.border),
          ),
        ),
        padding: const EdgeInsets.all(AppSpacing.base),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            StatusBadge(label: doc.type.label, color: doc.type.color),
            const SizedBox(width: AppSpacing.sm),
            Text(doc.source, style: AppTypography.textTheme.bodySmall),
            const Spacer(),
            Text(_formatDate(doc.date), style: AppTypography.textTheme.bodySmall),
          ]),
          const SizedBox(height: AppSpacing.sm),
          Text(doc.title, style: AppTypography.textTheme.titleMedium?.copyWith(color: AppColors.primaryText)),
          const SizedBox(height: AppSpacing.sm),
          _HighlightedText(text: doc.excerpt, query: query),
          const SizedBox(height: AppSpacing.md),
          Row(children: [
            _ConfidenceBar(value: doc.confidenceScore),
            const Spacer(),
            StatusBadge(label: '${doc.citations.length} citations', color: AppColors.secondaryText),
          ]),
        ]),
      ),
    );
  }

  void _showPreview(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.surface,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
        side: BorderSide(color: AppColors.border),
      ),
      builder: (_) => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.75,
        builder: (_, sc) => _DocumentPreviewPanel(doc: doc, scrollController: sc),
      ),
    );
  }

  String _formatDate(DateTime d) => '${d.day}/${d.month}/${d.year}';
}

class _HighlightedText extends StatelessWidget {
  const _HighlightedText({required this.text, required this.query});
  final String text;
  final String query;

  @override
  Widget build(BuildContext context) {
    if (query.isEmpty) {
      return Text(text, style: AppTypography.textTheme.bodyMedium, maxLines: 3, overflow: TextOverflow.ellipsis);
    }
    final lower = text.toLowerCase();
    final lowerQ = query.toLowerCase();
    final idx = lower.indexOf(lowerQ);
    if (idx < 0) {
      return Text(text, style: AppTypography.textTheme.bodyMedium, maxLines: 3, overflow: TextOverflow.ellipsis);
    }
    final before = text.substring(0, idx);
    final match = text.substring(idx, idx + query.length);
    final after = text.substring(idx + query.length);
    return RichText(
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: AppTypography.textTheme.bodyMedium,
        children: [
          TextSpan(text: before),
          TextSpan(text: match, style: TextStyle(color: AppColors.accent, backgroundColor: AppColors.accent.withValues(alpha: 0.15), fontWeight: FontWeight.w600)),
          TextSpan(text: after),
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
        width: 80, height: 3,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(2), color: AppColors.border),
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
      const SizedBox(width: 8),
      Text('${(value * 100).round()}% confidence', style: AppTypography.textTheme.labelSmall?.copyWith(color: AppColors.goldDim)),
    ]);
  }
}

class _DocumentPreviewPanel extends StatelessWidget {
  const _DocumentPreviewPanel({required this.doc, required this.scrollController});
  final KnowledgeDocument doc;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.all(AppSpacing.xl),
        decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.border))),
        child: Row(children: [
          Container(width: 4, height: 40, color: doc.type.color),
          const SizedBox(width: AppSpacing.md),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            StatusBadge(label: doc.type.label, color: doc.type.color),
            const SizedBox(height: 4),
            Text(doc.title, style: AppTypography.textTheme.headlineSmall),
            Text('${doc.source} · ${_formatDate(doc.date)}', style: AppTypography.textTheme.bodySmall),
          ])),
        ]),
      ),
      Expanded(
        child: ListView(
          controller: scrollController,
          padding: const EdgeInsets.all(AppSpacing.xl),
          children: [
            Text(doc.excerpt, style: AppTypography.textTheme.bodyLarge?.copyWith(
              color: AppColors.primaryText, height: 1.7,
            )),
            const SizedBox(height: AppSpacing.xl),
            const SectionHeader(label: 'Citations'),
            const SizedBox(height: AppSpacing.base),
            ...doc.citations.asMap().entries.map((e) => Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.sm),
              child: Row(children: [
                Text('${e.key + 1}. ', style: AppTypography.textTheme.labelLarge?.copyWith(color: AppColors.accent)),
                Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(e.value.title, style: AppTypography.textTheme.titleSmall?.copyWith(color: AppColors.primaryText)),
                  Text('${e.value.source}, ${e.value.year}', style: AppTypography.textTheme.bodySmall),
                ])),
              ]),
            )),
            const SizedBox(height: AppSpacing.xl),
            SizedBox(
              width: double.infinity,
              child: PremiumButton(
                label: 'Mark as Reference',
                variant: PremiumButtonVariant.ghost,
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    ]);
  }

  String _formatDate(DateTime d) => '${d.day}/${d.month}/${d.year}';
}
