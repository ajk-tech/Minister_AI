import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'knowledge_models.freezed.dart';

enum KnowledgeDocumentType { report, policy, memo, legislation, speech, intelligence }

extension KnowledgeDocumentTypeExt on KnowledgeDocumentType {
  String get label => switch (this) {
        KnowledgeDocumentType.report => 'Report',
        KnowledgeDocumentType.policy => 'Policy',
        KnowledgeDocumentType.memo => 'Memo',
        KnowledgeDocumentType.legislation => 'Legislation',
        KnowledgeDocumentType.speech => 'Speech',
        KnowledgeDocumentType.intelligence => 'Intelligence',
      };

  Color get color => switch (this) {
        KnowledgeDocumentType.report => const Color(0xFF2E5C8A),
        KnowledgeDocumentType.policy => const Color(0xFF5C3D8A),
        KnowledgeDocumentType.memo => const Color(0xFF2A6A4F),
        KnowledgeDocumentType.legislation => const Color(0xFF8A4F2A),
        KnowledgeDocumentType.speech => const Color(0xFF4A2A6A),
        KnowledgeDocumentType.intelligence => const Color(0xFF8A2A2A),
      };
}

@freezed
class KnowledgeCitation with _$KnowledgeCitation {
  const factory KnowledgeCitation({
    required String id,
    required String title,
    required String source,
    required int year,
  }) = _KnowledgeCitation;
}

@freezed
class KnowledgeDocument with _$KnowledgeDocument {
  const factory KnowledgeDocument({
    required String id,
    required String title,
    required KnowledgeDocumentType type,
    required String excerpt,
    required String source,
    required DateTime date,
    required double confidenceScore,
    required List<KnowledgeCitation> citations,
    required List<String> tags,
    required String fullContent,
  }) = _KnowledgeDocument;
}

@freezed
class SearchFilters with _$SearchFilters {
  const factory SearchFilters({
    @Default({}) Set<KnowledgeDocumentType> selectedTypes,
    @Default(0.0) double minConfidence,
  }) = _SearchFilters;
}

enum SearchStatus { idle, searching, done, empty }

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default('') String query,
    @Default(SearchFilters()) SearchFilters filters,
    @Default([]) List<KnowledgeDocument> results,
    @Default(SearchStatus.idle) SearchStatus status,
  }) = _SearchState;
}
