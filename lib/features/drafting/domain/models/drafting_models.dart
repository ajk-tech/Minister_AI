import 'package:freezed_annotation/freezed_annotation.dart';

part 'drafting_models.freezed.dart';

enum DocumentType { speech, briefingNote, officialLetter, memorandum, pressRelease }

extension DocumentTypeLabel on DocumentType {
  String get label => switch (this) {
        DocumentType.speech => 'Speech',
        DocumentType.briefingNote => 'Briefing Note',
        DocumentType.officialLetter => 'Official Letter',
        DocumentType.memorandum => 'Memorandum',
        DocumentType.pressRelease => 'Press Release',
      };
}

enum SuggestionType { rephrase, expand, formalize }

extension SuggestionTypeLabel on SuggestionType {
  String get label => switch (this) {
        SuggestionType.rephrase => 'Rephrase',
        SuggestionType.expand => 'Expand',
        SuggestionType.formalize => 'Formalize',
      };
}

@freezed
class DocumentVersion with _$DocumentVersion {
  const factory DocumentVersion({
    required String id,
    required DateTime timestamp,
    required String contentSnapshot,
    required int wordCount,
  }) = _DocumentVersion;
}

@freezed
class AiSuggestion with _$AiSuggestion {
  const factory AiSuggestion({
    required String id,
    required SuggestionType type,
    required String originalText,
    required String suggestion,
    required String rationale,
    @Default(false) bool isApplied,
    @Default(false) bool isDismissed,
  }) = _AiSuggestion;
}

@freezed
class DraftDocument with _$DraftDocument {
  const factory DraftDocument({
    required String id,
    required String title,
    required DocumentType type,
    required String content,
    required List<String> outlineSections,
    required List<DocumentVersion> versions,
    required List<AiSuggestion> suggestions,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _DraftDocument;
}

@freezed
class DraftingState with _$DraftingState {
  const factory DraftingState({
    required List<DraftDocument> documents,
    required String? activeDocumentId,
    @Default(false) bool isSaving,
  }) = _DraftingState;
}
