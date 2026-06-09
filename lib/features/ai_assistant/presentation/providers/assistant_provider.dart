import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/models/assistant_models.dart';
import '../../../../core/di/providers.dart';

part 'assistant_provider.g.dart';

@riverpod
class AssistantNotifier extends _$AssistantNotifier {
  @override
  Future<AssistantState> build() async {
    final repo = ref.read(assistantRepositoryProvider);
    final sessions = await repo.getSessions();
    return AssistantState(
      sessions: sessions,
      activeSessionId: sessions.isNotEmpty ? sessions.first.id : null,
    );
  }

  void selectSession(String id) {
    final s = state.valueOrNull;
    if (s == null) return;
    state = AsyncData(s.copyWith(activeSessionId: id));
  }

  void newSession() {
    final s = state.valueOrNull;
    if (s == null) return;
    final session = AssistantSession(
      id: 'session_${DateTime.now().millisecondsSinceEpoch}',
      title: 'New Intelligence Request',
      cards: [],
      createdAt: DateTime.now(),
    );
    state = AsyncData(s.copyWith(
      sessions: [session, ...s.sessions],
      activeSessionId: session.id,
    ));
  }

  Future<void> submitQuery(String query) async {
    final s = state.valueOrNull;
    if (s == null || s.isGenerating) return;

    final steps = [
      const AgentStep(label: 'Research', status: AgentStepStatus.pending),
      const AgentStep(label: 'Analyse', status: AgentStepStatus.pending),
      const AgentStep(label: 'Synthesise', status: AgentStepStatus.pending),
      const AgentStep(label: 'Format', status: AgentStepStatus.pending),
    ];

    state = AsyncData(s.copyWith(isGenerating: true, generatingSteps: steps));

    // Animate through agent steps
    for (int i = 0; i < steps.length; i++) {
      await Future.delayed(const Duration(milliseconds: 500));
      final current = state.valueOrNull;
      if (current == null) return;
      final updated = List<AgentStep>.from(current.generatingSteps ?? steps);
      if (i > 0) updated[i - 1] = updated[i - 1].copyWith(status: AgentStepStatus.completed);
      updated[i] = updated[i].copyWith(status: AgentStepStatus.active);
      state = AsyncData(current.copyWith(generatingSteps: updated));
    }

    await Future.delayed(const Duration(milliseconds: 500));

    final completedSteps = steps.map((s) => s.copyWith(status: AgentStepStatus.completed)).toList();
    final card = BriefingCard(
      id: 'card_${DateTime.now().millisecondsSinceEpoch}',
      query: query,
      responseType: BriefingResponseType.intelligence,
      headline: 'Intelligence Brief: ${query.length > 40 ? '${query.substring(0, 40)}...' : query}',
      body: 'Based on available intelligence sources, the following analysis has been prepared in response to your query. This briefing synthesises information from classified and open-source materials, cross-referenced with departmental records and recent policy documents.\n\nThe intelligence picture indicates several key developments that require ministerial attention. Further detailed analysis is available on request, with supporting documentation accessible through the Knowledge Repository.',
      sources: [
        const SourceReference(id: 'new1', title: 'Internal Intelligence Brief', type: SourceType.internal, excerpt: 'Synthesised analysis from departmental sources...'),
        const SourceReference(id: 'new2', title: 'Policy Database Reference', type: SourceType.policy, excerpt: 'Relevant policy framework and legislative context...'),
      ],
      agentSteps: completedSteps,
      timestamp: DateTime.now(),
    );

    final current = state.valueOrNull!;
    final sessions = current.sessions.map((session) {
      if (session.id == current.activeSessionId) {
        return session.copyWith(cards: [...session.cards, card]);
      }
      return session;
    }).toList();

    state = AsyncData(current.copyWith(
      sessions: sessions,
      isGenerating: false,
      generatingSteps: null,
    ));
  }
}
