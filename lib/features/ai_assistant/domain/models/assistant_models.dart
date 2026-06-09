import 'package:freezed_annotation/freezed_annotation.dart';

part 'assistant_models.freezed.dart';

enum AgentStepStatus { pending, active, completed }
enum SourceType { report, policy, web, internal }
enum BriefingResponseType { summary, analysis, draft, actionItems, intelligence }

@freezed
class AgentStep with _$AgentStep {
  const factory AgentStep({
    required String label,
    required AgentStepStatus status,
  }) = _AgentStep;
}

@freezed
class SourceReference with _$SourceReference {
  const factory SourceReference({
    required String id,
    required String title,
    required SourceType type,
    required String excerpt,
  }) = _SourceReference;
}

@freezed
class BriefingCard with _$BriefingCard {
  const factory BriefingCard({
    required String id,
    required String query,
    required BriefingResponseType responseType,
    required String headline,
    required String body,
    required List<SourceReference> sources,
    required List<AgentStep> agentSteps,
    required DateTime timestamp,
  }) = _BriefingCard;
}

@freezed
class AssistantSession with _$AssistantSession {
  const factory AssistantSession({
    required String id,
    required String title,
    required List<BriefingCard> cards,
    required DateTime createdAt,
  }) = _AssistantSession;
}

@freezed
class AssistantState with _$AssistantState {
  const factory AssistantState({
    required List<AssistantSession> sessions,
    required String? activeSessionId,
    @Default(false) bool isGenerating,
    List<AgentStep>? generatingSteps,
  }) = _AssistantState;
}
