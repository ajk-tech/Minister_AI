import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/models/drafting_models.dart';
import '../providers/drafting_provider.dart';

class DraftingScreen extends ConsumerWidget {
  const DraftingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(draftingNotifierProvider);
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: state.when(
          loading: () => const Center(child: CircularProgressIndicator(color: AppColors.accent)),
          error: (e, _) => Center(child: Text('Error: $e')),
          data: (data) {
            final doc = data.documents.firstWhere((d) => d.id == data.activeDocumentId, orElse: () => data.documents.first);
            return _DraftingLayout(doc: doc, state: data);
          },
        ),
      ),
    );
  }
}

class _DraftingLayout extends ConsumerWidget {
  const _DraftingLayout({required this.doc, required this.state});
  final DraftDocument doc;
  final DraftingState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isTablet = ResponsiveBreakpoints.of(context).largerThan(MOBILE);
    final isDesktop = ResponsiveBreakpoints.of(context).largerThan(TABLET);

    return Column(children: [
      _DraftingTopBar(doc: doc, state: state),
      const AppDivider(),
      Expanded(
        child: isTablet
            ? Row(children: [
                if (isDesktop) ...[
                  SizedBox(width: 240, child: _OutlinePanel(doc: doc)),
                  const AppDivider(vertical: true),
                ],
                Expanded(child: _EditorPanel(doc: doc)),
                const AppDivider(vertical: true),
                SizedBox(width: 280, child: _SuggestionsPanel(doc: doc)),
              ])
            : _EditorPanel(doc: doc),
      ),
    ]);
  }
}

class _DraftingTopBar extends ConsumerWidget {
  const _DraftingTopBar({required this.doc, required this.state});
  final DraftDocument doc;
  final DraftingState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl, vertical: AppSpacing.md),
      color: AppColors.surface,
      child: Row(children: [
        StatusBadge(label: doc.type.label, color: AppColors.accentDim),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          child: Text(
            doc.title,
            style: AppTypography.textTheme.titleLarge,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: AppSpacing.md),
        Text(
          state.isSaving ? 'Saving...' : 'Saved',
          style: AppTypography.textTheme.bodySmall?.copyWith(
            color: state.isSaving ? AppColors.accentDim : AppColors.success,
          ),
        ),
        const SizedBox(width: AppSpacing.md),
        _wordCount(doc),
        const SizedBox(width: AppSpacing.sm),
        IconButton(
          icon: const Icon(Icons.history, size: 18),
          color: AppColors.secondaryText,
          onPressed: () => _showVersionHistory(context, doc),
        ),
        IconButton(
          icon: const Icon(Icons.ios_share, size: 18),
          color: AppColors.secondaryText,
          onPressed: () => _showExportSheet(context),
        ),
        if (ResponsiveBreakpoints.of(context).isMobile)
          IconButton(
            icon: const Icon(Icons.format_list_bulleted, size: 18),
            color: AppColors.secondaryText,
            onPressed: () => _showOutlineSheet(context, doc),
          ),
      ]),
    );
  }

  Widget _wordCount(DraftDocument doc) {
    final count = doc.content.split(RegExp(r'\s+')).where((w) => w.isNotEmpty).length;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(color: AppColors.surfaceElevated, borderRadius: BorderRadius.circular(4)),
      child: Text('$count words', style: AppTypography.textTheme.labelMedium),
    );
  }

  void _showVersionHistory(BuildContext context, DraftDocument doc) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
        side: BorderSide(color: AppColors.border),
      ),
      builder: (_) => _VersionHistorySheet(doc: doc),
    );
  }

  void _showExportSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
        side: BorderSide(color: AppColors.border),
      ),
      builder: (_) => const _ExportSheet(),
    );
  }

  void _showOutlineSheet(BuildContext context, DraftDocument doc) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.surface,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
      ),
      builder: (_) => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.6,
        builder: (_, sc) => _OutlinePanel(doc: doc, scrollController: sc),
      ),
    );
  }
}

class _OutlinePanel extends ConsumerWidget {
  const _OutlinePanel({required this.doc, this.scrollController});
  final DraftDocument doc;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: AppColors.surface,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(AppSpacing.base),
          child: const SectionHeader(label: 'Outline'),
        ),
        const AppDivider(),
        Expanded(
          child: ListView.builder(
            controller: scrollController,
            padding: const EdgeInsets.all(AppSpacing.md),
            itemCount: doc.outlineSections.length,
            itemBuilder: (_, i) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(children: [
                Container(width: 4, height: 4, decoration: const BoxDecoration(color: AppColors.accentDim, shape: BoxShape.circle)),
                const SizedBox(width: 10),
                Expanded(child: Text(doc.outlineSections[i], style: AppTypography.textTheme.bodyMedium?.copyWith(color: AppColors.primaryText))),
              ]),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppSpacing.base),
          child: SizedBox(
            width: double.infinity,
            child: PremiumButton(
              label: 'Add Section',
              icon: Icons.add,
              variant: PremiumButtonVariant.ghost,
              compact: true,
              onPressed: () => ref.read(draftingNotifierProvider.notifier).addOutlineSection('New Section'),
            ),
          ),
        ),
      ]),
    );
  }
}

class _EditorPanel extends ConsumerWidget {
  const _EditorPanel({required this.doc});
  final DraftDocument doc;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = TextEditingController(text: doc.content);
    // Preserve cursor position
    controller.selection = TextSelection.collapsed(offset: controller.text.length);

    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xxxl, vertical: AppSpacing.xl),
      child: TextField(
        controller: controller,
        maxLines: null,
        expands: true,
        style: AppTypography.displayTitle.copyWith(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          height: 1.9,
          color: AppColors.primaryText,
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          filled: false,
          contentPadding: EdgeInsets.zero,
          isDense: true,
        ),
        onChanged: (value) => ref.read(draftingNotifierProvider.notifier).updateContent(value),
      ),
    );
  }
}

class _SuggestionsPanel extends ConsumerWidget {
  const _SuggestionsPanel({required this.doc});
  final DraftDocument doc;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeSuggestions = doc.suggestions.where((s) => !s.isApplied && !s.isDismissed).toList();

    return Container(
      color: AppColors.surface,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(AppSpacing.base),
          child: Row(children: [
            const Expanded(child: SectionHeader(label: 'AI Suggestions')),
            StatusBadge(label: '${activeSuggestions.length}', color: AppColors.accentDim),
          ]),
        ),
        const AppDivider(),
        Expanded(
          child: activeSuggestions.isEmpty
              ? Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
                  const Icon(Icons.auto_awesome, color: AppColors.accentDim, size: 32),
                  const SizedBox(height: AppSpacing.sm),
                  Text('No pending suggestions', style: AppTypography.textTheme.bodySmall),
                ]))
              : ListView.separated(
                  padding: const EdgeInsets.all(AppSpacing.md),
                  itemCount: activeSuggestions.length,
                  separatorBuilder: (_, __) => const SizedBox(height: AppSpacing.md),
                  itemBuilder: (_, i) => _SuggestionCard(
                    suggestion: activeSuggestions[i],
                    onApply: () => ref.read(draftingNotifierProvider.notifier).applySuggestion(activeSuggestions[i].id),
                    onDismiss: () => ref.read(draftingNotifierProvider.notifier).dismissSuggestion(activeSuggestions[i].id),
                  ),
                ),
        ),
      ]),
    );
  }
}

class _SuggestionCard extends StatelessWidget {
  const _SuggestionCard({required this.suggestion, required this.onApply, required this.onDismiss});
  final AiSuggestion suggestion;
  final VoidCallback onApply;
  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    return ExecutiveCard(
      padding: const EdgeInsets.all(AppSpacing.md),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        StatusBadge(label: suggestion.type.label, color: AppColors.accentDim),
        const SizedBox(height: AppSpacing.sm),
        Text(
          '"${suggestion.originalText.length > 60 ? '${suggestion.originalText.substring(0, 60)}...' : suggestion.originalText}"',
          style: AppTypography.textTheme.bodySmall?.copyWith(fontStyle: FontStyle.italic),
        ),
        const SizedBox(height: AppSpacing.sm),
        Container(
          padding: const EdgeInsets.all(AppSpacing.sm),
          decoration: BoxDecoration(color: AppColors.surfaceElevated, borderRadius: BorderRadius.circular(4)),
          child: Text(
            suggestion.suggestion.length > 120 ? '${suggestion.suggestion.substring(0, 120)}...' : suggestion.suggestion,
            style: AppTypography.textTheme.bodyMedium?.copyWith(color: AppColors.primaryText),
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Text(suggestion.rationale, style: AppTypography.textTheme.bodySmall),
        const SizedBox(height: AppSpacing.md),
        Row(children: [
          Expanded(child: PremiumButton(label: 'Apply', onPressed: onApply, compact: true)),
          const SizedBox(width: AppSpacing.sm),
          PremiumButton(label: 'Dismiss', variant: PremiumButtonVariant.text, onPressed: onDismiss, compact: true),
        ]),
      ]),
    );
  }
}

class _VersionHistorySheet extends StatelessWidget {
  const _VersionHistorySheet({required this.doc});
  final DraftDocument doc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const SectionHeader(label: 'Version History'),
        const SizedBox(height: AppSpacing.base),
        ...doc.versions.reversed.map((v) => Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
          child: Row(children: [
            const Icon(Icons.history, size: 14, color: AppColors.accentDim),
            const SizedBox(width: AppSpacing.sm),
            Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(_formatDt(v.timestamp), style: AppTypography.textTheme.titleSmall?.copyWith(color: AppColors.primaryText)),
              Text('${v.wordCount} words', style: AppTypography.textTheme.bodySmall),
            ])),
            PremiumButton(label: 'Restore', variant: PremiumButtonVariant.ghost, compact: true, onPressed: () => Navigator.pop(context)),
          ]),
        )),
      ]),
    );
  }

  String _formatDt(DateTime dt) {
    return '${dt.day}/${dt.month}/${dt.year} ${dt.hour}:${dt.minute.toString().padLeft(2, '0')}';
  }
}

class _ExportSheet extends StatelessWidget {
  const _ExportSheet();

  @override
  Widget build(BuildContext context) {
    const options = [
      (Icons.picture_as_pdf, 'Export as PDF'),
      (Icons.article_outlined, 'Export as DOCX'),
      (Icons.print_outlined, 'Print Document'),
    ];
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.xl),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const SectionHeader(label: 'Export Document'),
        const SizedBox(height: AppSpacing.base),
        ...options.map((opt) => ListTile(
          leading: Icon(opt.$1, color: AppColors.accentDim),
          title: Text(opt.$2, style: AppTypography.textTheme.titleMedium),
          onTap: () => Navigator.pop(context),
          contentPadding: EdgeInsets.zero,
        )),
      ]),
    );
  }
}
