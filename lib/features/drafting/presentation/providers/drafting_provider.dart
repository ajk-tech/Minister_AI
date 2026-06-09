import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/models/drafting_models.dart';
import '../../../../core/di/providers.dart';

part 'drafting_provider.g.dart';

@riverpod
class DraftingNotifier extends _$DraftingNotifier {
  Timer? _debounce;

  @override
  Future<DraftingState> build() async {
    ref.onDispose(() => _debounce?.cancel());
    final repo = ref.read(draftingRepositoryProvider);
    final docs = await repo.getDocuments();
    return DraftingState(
      documents: docs,
      activeDocumentId: docs.isNotEmpty ? docs.first.id : null,
    );
  }

  DraftDocument? get _activeDoc {
    final s = state.valueOrNull;
    if (s == null) return null;
    return s.documents.where((d) => d.id == s.activeDocumentId).firstOrNull;
  }

  void selectDocument(String id) {
    final s = state.valueOrNull;
    if (s == null) return;
    state = AsyncData(s.copyWith(activeDocumentId: id));
  }

  void updateContent(String content) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(seconds: 2), () => _saveVersion(content));
  }

  void _saveVersion(String content) {
    final s = state.valueOrNull;
    final doc = _activeDoc;
    if (s == null || doc == null) return;

    state = AsyncData(s.copyWith(isSaving: true));

    final version = DocumentVersion(
      id: 'v_${DateTime.now().millisecondsSinceEpoch}',
      timestamp: DateTime.now(),
      contentSnapshot: content,
      wordCount: content.split(RegExp(r'\s+')).where((w) => w.isNotEmpty).length,
    );

    final updatedDoc = doc.copyWith(
      content: content,
      versions: [...doc.versions, version],
      updatedAt: DateTime.now(),
    );

    final docs = s.documents.map((d) => d.id == doc.id ? updatedDoc : d).toList();
    state = AsyncData(s.copyWith(documents: docs, isSaving: false));
  }

  void applySuggestion(String suggestionId) {
    final s = state.valueOrNull;
    final doc = _activeDoc;
    if (s == null || doc == null) return;

    final suggestion = doc.suggestions.firstWhere((sg) => sg.id == suggestionId);
    final newContent = doc.content.replaceFirst(suggestion.originalText, suggestion.suggestion);
    final updatedSuggestions = doc.suggestions.map((sg) => sg.id == suggestionId ? sg.copyWith(isApplied: true) : sg).toList();
    final updatedDoc = doc.copyWith(content: newContent, suggestions: updatedSuggestions, updatedAt: DateTime.now());
    final docs = s.documents.map((d) => d.id == doc.id ? updatedDoc : d).toList();
    state = AsyncData(s.copyWith(documents: docs));
  }

  void dismissSuggestion(String suggestionId) {
    final s = state.valueOrNull;
    final doc = _activeDoc;
    if (s == null || doc == null) return;
    final updatedSuggestions = doc.suggestions.map((sg) => sg.id == suggestionId ? sg.copyWith(isDismissed: true) : sg).toList();
    final updatedDoc = doc.copyWith(suggestions: updatedSuggestions);
    final docs = s.documents.map((d) => d.id == doc.id ? updatedDoc : d).toList();
    state = AsyncData(s.copyWith(documents: docs));
  }

  void addOutlineSection(String label) {
    final s = state.valueOrNull;
    final doc = _activeDoc;
    if (s == null || doc == null) return;
    final updatedDoc = doc.copyWith(outlineSections: [...doc.outlineSections, label]);
    final docs = s.documents.map((d) => d.id == doc.id ? updatedDoc : d).toList();
    state = AsyncData(s.copyWith(documents: docs));
  }

  void newDocument(DocumentType type) {
    final s = state.valueOrNull;
    if (s == null) return;
    final doc = DraftDocument(
      id: 'doc_${DateTime.now().millisecondsSinceEpoch}',
      title: 'Untitled ${type.label}',
      type: type,
      content: '',
      outlineSections: ['Introduction', 'Body', 'Conclusion'],
      versions: [],
      suggestions: [],
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    state = AsyncData(s.copyWith(documents: [doc, ...s.documents], activeDocumentId: doc.id));
  }
}
