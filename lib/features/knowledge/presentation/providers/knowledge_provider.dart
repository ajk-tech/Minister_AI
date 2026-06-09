import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/models/knowledge_models.dart';
import '../../../../core/di/providers.dart';

part 'knowledge_provider.g.dart';

@riverpod
class KnowledgeNotifier extends _$KnowledgeNotifier {
  Timer? _debounce;

  @override
  SearchState build() {
    ref.onDispose(() => _debounce?.cancel());
    return const SearchState();
  }

  void search(String query) {
    _debounce?.cancel();
    if (query.trim().isEmpty) {
      state = state.copyWith(query: '', status: SearchStatus.idle, results: []);
      return;
    }
    state = state.copyWith(query: query, status: SearchStatus.searching);
    _debounce = Timer(const Duration(milliseconds: 300), () => _doSearch(query));
  }

  void updateFilters(SearchFilters filters) {
    state = state.copyWith(filters: filters, status: SearchStatus.searching);
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () => _doSearch(state.query));
  }

  void clearSearch() {
    _debounce?.cancel();
    state = const SearchState();
  }

  Future<void> _doSearch(String query) async {
    final repo = ref.read(knowledgeRepositoryProvider);
    final results = await repo.search(query, state.filters);
    state = state.copyWith(
      results: results,
      status: results.isEmpty ? SearchStatus.empty : SearchStatus.done,
    );
  }
}
