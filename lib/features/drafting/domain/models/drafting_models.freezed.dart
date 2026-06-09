// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drafting_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DocumentVersion {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get contentSnapshot => throw _privateConstructorUsedError;
  int get wordCount => throw _privateConstructorUsedError;

  /// Create a copy of DocumentVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentVersionCopyWith<DocumentVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentVersionCopyWith<$Res> {
  factory $DocumentVersionCopyWith(
          DocumentVersion value, $Res Function(DocumentVersion) then) =
      _$DocumentVersionCopyWithImpl<$Res, DocumentVersion>;
  @useResult
  $Res call(
      {String id, DateTime timestamp, String contentSnapshot, int wordCount});
}

/// @nodoc
class _$DocumentVersionCopyWithImpl<$Res, $Val extends DocumentVersion>
    implements $DocumentVersionCopyWith<$Res> {
  _$DocumentVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? contentSnapshot = null,
    Object? wordCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contentSnapshot: null == contentSnapshot
          ? _value.contentSnapshot
          : contentSnapshot // ignore: cast_nullable_to_non_nullable
              as String,
      wordCount: null == wordCount
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentVersionImplCopyWith<$Res>
    implements $DocumentVersionCopyWith<$Res> {
  factory _$$DocumentVersionImplCopyWith(_$DocumentVersionImpl value,
          $Res Function(_$DocumentVersionImpl) then) =
      __$$DocumentVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, DateTime timestamp, String contentSnapshot, int wordCount});
}

/// @nodoc
class __$$DocumentVersionImplCopyWithImpl<$Res>
    extends _$DocumentVersionCopyWithImpl<$Res, _$DocumentVersionImpl>
    implements _$$DocumentVersionImplCopyWith<$Res> {
  __$$DocumentVersionImplCopyWithImpl(
      _$DocumentVersionImpl _value, $Res Function(_$DocumentVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DocumentVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? contentSnapshot = null,
    Object? wordCount = null,
  }) {
    return _then(_$DocumentVersionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      contentSnapshot: null == contentSnapshot
          ? _value.contentSnapshot
          : contentSnapshot // ignore: cast_nullable_to_non_nullable
              as String,
      wordCount: null == wordCount
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DocumentVersionImpl implements _DocumentVersion {
  const _$DocumentVersionImpl(
      {required this.id,
      required this.timestamp,
      required this.contentSnapshot,
      required this.wordCount});

  @override
  final String id;
  @override
  final DateTime timestamp;
  @override
  final String contentSnapshot;
  @override
  final int wordCount;

  @override
  String toString() {
    return 'DocumentVersion(id: $id, timestamp: $timestamp, contentSnapshot: $contentSnapshot, wordCount: $wordCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentVersionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.contentSnapshot, contentSnapshot) ||
                other.contentSnapshot == contentSnapshot) &&
            (identical(other.wordCount, wordCount) ||
                other.wordCount == wordCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, timestamp, contentSnapshot, wordCount);

  /// Create a copy of DocumentVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentVersionImplCopyWith<_$DocumentVersionImpl> get copyWith =>
      __$$DocumentVersionImplCopyWithImpl<_$DocumentVersionImpl>(
          this, _$identity);
}

abstract class _DocumentVersion implements DocumentVersion {
  const factory _DocumentVersion(
      {required final String id,
      required final DateTime timestamp,
      required final String contentSnapshot,
      required final int wordCount}) = _$DocumentVersionImpl;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  String get contentSnapshot;
  @override
  int get wordCount;

  /// Create a copy of DocumentVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentVersionImplCopyWith<_$DocumentVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AiSuggestion {
  String get id => throw _privateConstructorUsedError;
  SuggestionType get type => throw _privateConstructorUsedError;
  String get originalText => throw _privateConstructorUsedError;
  String get suggestion => throw _privateConstructorUsedError;
  String get rationale => throw _privateConstructorUsedError;
  bool get isApplied => throw _privateConstructorUsedError;
  bool get isDismissed => throw _privateConstructorUsedError;

  /// Create a copy of AiSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AiSuggestionCopyWith<AiSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiSuggestionCopyWith<$Res> {
  factory $AiSuggestionCopyWith(
          AiSuggestion value, $Res Function(AiSuggestion) then) =
      _$AiSuggestionCopyWithImpl<$Res, AiSuggestion>;
  @useResult
  $Res call(
      {String id,
      SuggestionType type,
      String originalText,
      String suggestion,
      String rationale,
      bool isApplied,
      bool isDismissed});
}

/// @nodoc
class _$AiSuggestionCopyWithImpl<$Res, $Val extends AiSuggestion>
    implements $AiSuggestionCopyWith<$Res> {
  _$AiSuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AiSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? originalText = null,
    Object? suggestion = null,
    Object? rationale = null,
    Object? isApplied = null,
    Object? isDismissed = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SuggestionType,
      originalText: null == originalText
          ? _value.originalText
          : originalText // ignore: cast_nullable_to_non_nullable
              as String,
      suggestion: null == suggestion
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as String,
      rationale: null == rationale
          ? _value.rationale
          : rationale // ignore: cast_nullable_to_non_nullable
              as String,
      isApplied: null == isApplied
          ? _value.isApplied
          : isApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      isDismissed: null == isDismissed
          ? _value.isDismissed
          : isDismissed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AiSuggestionImplCopyWith<$Res>
    implements $AiSuggestionCopyWith<$Res> {
  factory _$$AiSuggestionImplCopyWith(
          _$AiSuggestionImpl value, $Res Function(_$AiSuggestionImpl) then) =
      __$$AiSuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      SuggestionType type,
      String originalText,
      String suggestion,
      String rationale,
      bool isApplied,
      bool isDismissed});
}

/// @nodoc
class __$$AiSuggestionImplCopyWithImpl<$Res>
    extends _$AiSuggestionCopyWithImpl<$Res, _$AiSuggestionImpl>
    implements _$$AiSuggestionImplCopyWith<$Res> {
  __$$AiSuggestionImplCopyWithImpl(
      _$AiSuggestionImpl _value, $Res Function(_$AiSuggestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AiSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? originalText = null,
    Object? suggestion = null,
    Object? rationale = null,
    Object? isApplied = null,
    Object? isDismissed = null,
  }) {
    return _then(_$AiSuggestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SuggestionType,
      originalText: null == originalText
          ? _value.originalText
          : originalText // ignore: cast_nullable_to_non_nullable
              as String,
      suggestion: null == suggestion
          ? _value.suggestion
          : suggestion // ignore: cast_nullable_to_non_nullable
              as String,
      rationale: null == rationale
          ? _value.rationale
          : rationale // ignore: cast_nullable_to_non_nullable
              as String,
      isApplied: null == isApplied
          ? _value.isApplied
          : isApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      isDismissed: null == isDismissed
          ? _value.isDismissed
          : isDismissed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AiSuggestionImpl implements _AiSuggestion {
  const _$AiSuggestionImpl(
      {required this.id,
      required this.type,
      required this.originalText,
      required this.suggestion,
      required this.rationale,
      this.isApplied = false,
      this.isDismissed = false});

  @override
  final String id;
  @override
  final SuggestionType type;
  @override
  final String originalText;
  @override
  final String suggestion;
  @override
  final String rationale;
  @override
  @JsonKey()
  final bool isApplied;
  @override
  @JsonKey()
  final bool isDismissed;

  @override
  String toString() {
    return 'AiSuggestion(id: $id, type: $type, originalText: $originalText, suggestion: $suggestion, rationale: $rationale, isApplied: $isApplied, isDismissed: $isDismissed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiSuggestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.originalText, originalText) ||
                other.originalText == originalText) &&
            (identical(other.suggestion, suggestion) ||
                other.suggestion == suggestion) &&
            (identical(other.rationale, rationale) ||
                other.rationale == rationale) &&
            (identical(other.isApplied, isApplied) ||
                other.isApplied == isApplied) &&
            (identical(other.isDismissed, isDismissed) ||
                other.isDismissed == isDismissed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, originalText,
      suggestion, rationale, isApplied, isDismissed);

  /// Create a copy of AiSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AiSuggestionImplCopyWith<_$AiSuggestionImpl> get copyWith =>
      __$$AiSuggestionImplCopyWithImpl<_$AiSuggestionImpl>(this, _$identity);
}

abstract class _AiSuggestion implements AiSuggestion {
  const factory _AiSuggestion(
      {required final String id,
      required final SuggestionType type,
      required final String originalText,
      required final String suggestion,
      required final String rationale,
      final bool isApplied,
      final bool isDismissed}) = _$AiSuggestionImpl;

  @override
  String get id;
  @override
  SuggestionType get type;
  @override
  String get originalText;
  @override
  String get suggestion;
  @override
  String get rationale;
  @override
  bool get isApplied;
  @override
  bool get isDismissed;

  /// Create a copy of AiSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AiSuggestionImplCopyWith<_$AiSuggestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DraftDocument {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DocumentType get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String> get outlineSections => throw _privateConstructorUsedError;
  List<DocumentVersion> get versions => throw _privateConstructorUsedError;
  List<AiSuggestion> get suggestions => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of DraftDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DraftDocumentCopyWith<DraftDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraftDocumentCopyWith<$Res> {
  factory $DraftDocumentCopyWith(
          DraftDocument value, $Res Function(DraftDocument) then) =
      _$DraftDocumentCopyWithImpl<$Res, DraftDocument>;
  @useResult
  $Res call(
      {String id,
      String title,
      DocumentType type,
      String content,
      List<String> outlineSections,
      List<DocumentVersion> versions,
      List<AiSuggestion> suggestions,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$DraftDocumentCopyWithImpl<$Res, $Val extends DraftDocument>
    implements $DraftDocumentCopyWith<$Res> {
  _$DraftDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DraftDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? content = null,
    Object? outlineSections = null,
    Object? versions = null,
    Object? suggestions = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DocumentType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      outlineSections: null == outlineSections
          ? _value.outlineSections
          : outlineSections // ignore: cast_nullable_to_non_nullable
              as List<String>,
      versions: null == versions
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<DocumentVersion>,
      suggestions: null == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<AiSuggestion>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DraftDocumentImplCopyWith<$Res>
    implements $DraftDocumentCopyWith<$Res> {
  factory _$$DraftDocumentImplCopyWith(
          _$DraftDocumentImpl value, $Res Function(_$DraftDocumentImpl) then) =
      __$$DraftDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      DocumentType type,
      String content,
      List<String> outlineSections,
      List<DocumentVersion> versions,
      List<AiSuggestion> suggestions,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$DraftDocumentImplCopyWithImpl<$Res>
    extends _$DraftDocumentCopyWithImpl<$Res, _$DraftDocumentImpl>
    implements _$$DraftDocumentImplCopyWith<$Res> {
  __$$DraftDocumentImplCopyWithImpl(
      _$DraftDocumentImpl _value, $Res Function(_$DraftDocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DraftDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? content = null,
    Object? outlineSections = null,
    Object? versions = null,
    Object? suggestions = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$DraftDocumentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DocumentType,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      outlineSections: null == outlineSections
          ? _value._outlineSections
          : outlineSections // ignore: cast_nullable_to_non_nullable
              as List<String>,
      versions: null == versions
          ? _value._versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<DocumentVersion>,
      suggestions: null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<AiSuggestion>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DraftDocumentImpl implements _DraftDocument {
  const _$DraftDocumentImpl(
      {required this.id,
      required this.title,
      required this.type,
      required this.content,
      required final List<String> outlineSections,
      required final List<DocumentVersion> versions,
      required final List<AiSuggestion> suggestions,
      required this.createdAt,
      required this.updatedAt})
      : _outlineSections = outlineSections,
        _versions = versions,
        _suggestions = suggestions;

  @override
  final String id;
  @override
  final String title;
  @override
  final DocumentType type;
  @override
  final String content;
  final List<String> _outlineSections;
  @override
  List<String> get outlineSections {
    if (_outlineSections is EqualUnmodifiableListView) return _outlineSections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_outlineSections);
  }

  final List<DocumentVersion> _versions;
  @override
  List<DocumentVersion> get versions {
    if (_versions is EqualUnmodifiableListView) return _versions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_versions);
  }

  final List<AiSuggestion> _suggestions;
  @override
  List<AiSuggestion> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'DraftDocument(id: $id, title: $title, type: $type, content: $content, outlineSections: $outlineSections, versions: $versions, suggestions: $suggestions, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DraftDocumentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._outlineSections, _outlineSections) &&
            const DeepCollectionEquality().equals(other._versions, _versions) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      type,
      content,
      const DeepCollectionEquality().hash(_outlineSections),
      const DeepCollectionEquality().hash(_versions),
      const DeepCollectionEquality().hash(_suggestions),
      createdAt,
      updatedAt);

  /// Create a copy of DraftDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DraftDocumentImplCopyWith<_$DraftDocumentImpl> get copyWith =>
      __$$DraftDocumentImplCopyWithImpl<_$DraftDocumentImpl>(this, _$identity);
}

abstract class _DraftDocument implements DraftDocument {
  const factory _DraftDocument(
      {required final String id,
      required final String title,
      required final DocumentType type,
      required final String content,
      required final List<String> outlineSections,
      required final List<DocumentVersion> versions,
      required final List<AiSuggestion> suggestions,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$DraftDocumentImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  DocumentType get type;
  @override
  String get content;
  @override
  List<String> get outlineSections;
  @override
  List<DocumentVersion> get versions;
  @override
  List<AiSuggestion> get suggestions;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of DraftDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DraftDocumentImplCopyWith<_$DraftDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DraftingState {
  List<DraftDocument> get documents => throw _privateConstructorUsedError;
  String? get activeDocumentId => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;

  /// Create a copy of DraftingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DraftingStateCopyWith<DraftingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraftingStateCopyWith<$Res> {
  factory $DraftingStateCopyWith(
          DraftingState value, $Res Function(DraftingState) then) =
      _$DraftingStateCopyWithImpl<$Res, DraftingState>;
  @useResult
  $Res call(
      {List<DraftDocument> documents, String? activeDocumentId, bool isSaving});
}

/// @nodoc
class _$DraftingStateCopyWithImpl<$Res, $Val extends DraftingState>
    implements $DraftingStateCopyWith<$Res> {
  _$DraftingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DraftingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
    Object? activeDocumentId = freezed,
    Object? isSaving = null,
  }) {
    return _then(_value.copyWith(
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<DraftDocument>,
      activeDocumentId: freezed == activeDocumentId
          ? _value.activeDocumentId
          : activeDocumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DraftingStateImplCopyWith<$Res>
    implements $DraftingStateCopyWith<$Res> {
  factory _$$DraftingStateImplCopyWith(
          _$DraftingStateImpl value, $Res Function(_$DraftingStateImpl) then) =
      __$$DraftingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DraftDocument> documents, String? activeDocumentId, bool isSaving});
}

/// @nodoc
class __$$DraftingStateImplCopyWithImpl<$Res>
    extends _$DraftingStateCopyWithImpl<$Res, _$DraftingStateImpl>
    implements _$$DraftingStateImplCopyWith<$Res> {
  __$$DraftingStateImplCopyWithImpl(
      _$DraftingStateImpl _value, $Res Function(_$DraftingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DraftingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = null,
    Object? activeDocumentId = freezed,
    Object? isSaving = null,
  }) {
    return _then(_$DraftingStateImpl(
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<DraftDocument>,
      activeDocumentId: freezed == activeDocumentId
          ? _value.activeDocumentId
          : activeDocumentId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DraftingStateImpl implements _DraftingState {
  const _$DraftingStateImpl(
      {required final List<DraftDocument> documents,
      required this.activeDocumentId,
      this.isSaving = false})
      : _documents = documents;

  final List<DraftDocument> _documents;
  @override
  List<DraftDocument> get documents {
    if (_documents is EqualUnmodifiableListView) return _documents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  final String? activeDocumentId;
  @override
  @JsonKey()
  final bool isSaving;

  @override
  String toString() {
    return 'DraftingState(documents: $documents, activeDocumentId: $activeDocumentId, isSaving: $isSaving)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DraftingStateImpl &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.activeDocumentId, activeDocumentId) ||
                other.activeDocumentId == activeDocumentId) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_documents),
      activeDocumentId,
      isSaving);

  /// Create a copy of DraftingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DraftingStateImplCopyWith<_$DraftingStateImpl> get copyWith =>
      __$$DraftingStateImplCopyWithImpl<_$DraftingStateImpl>(this, _$identity);
}

abstract class _DraftingState implements DraftingState {
  const factory _DraftingState(
      {required final List<DraftDocument> documents,
      required final String? activeDocumentId,
      final bool isSaving}) = _$DraftingStateImpl;

  @override
  List<DraftDocument> get documents;
  @override
  String? get activeDocumentId;
  @override
  bool get isSaving;

  /// Create a copy of DraftingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DraftingStateImplCopyWith<_$DraftingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
