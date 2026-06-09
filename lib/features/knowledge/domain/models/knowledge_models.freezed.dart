// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'knowledge_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KnowledgeCitation {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;

  /// Create a copy of KnowledgeCitation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KnowledgeCitationCopyWith<KnowledgeCitation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnowledgeCitationCopyWith<$Res> {
  factory $KnowledgeCitationCopyWith(
          KnowledgeCitation value, $Res Function(KnowledgeCitation) then) =
      _$KnowledgeCitationCopyWithImpl<$Res, KnowledgeCitation>;
  @useResult
  $Res call({String id, String title, String source, int year});
}

/// @nodoc
class _$KnowledgeCitationCopyWithImpl<$Res, $Val extends KnowledgeCitation>
    implements $KnowledgeCitationCopyWith<$Res> {
  _$KnowledgeCitationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KnowledgeCitation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? source = null,
    Object? year = null,
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
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KnowledgeCitationImplCopyWith<$Res>
    implements $KnowledgeCitationCopyWith<$Res> {
  factory _$$KnowledgeCitationImplCopyWith(_$KnowledgeCitationImpl value,
          $Res Function(_$KnowledgeCitationImpl) then) =
      __$$KnowledgeCitationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String source, int year});
}

/// @nodoc
class __$$KnowledgeCitationImplCopyWithImpl<$Res>
    extends _$KnowledgeCitationCopyWithImpl<$Res, _$KnowledgeCitationImpl>
    implements _$$KnowledgeCitationImplCopyWith<$Res> {
  __$$KnowledgeCitationImplCopyWithImpl(_$KnowledgeCitationImpl _value,
      $Res Function(_$KnowledgeCitationImpl) _then)
      : super(_value, _then);

  /// Create a copy of KnowledgeCitation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? source = null,
    Object? year = null,
  }) {
    return _then(_$KnowledgeCitationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$KnowledgeCitationImpl implements _KnowledgeCitation {
  const _$KnowledgeCitationImpl(
      {required this.id,
      required this.title,
      required this.source,
      required this.year});

  @override
  final String id;
  @override
  final String title;
  @override
  final String source;
  @override
  final int year;

  @override
  String toString() {
    return 'KnowledgeCitation(id: $id, title: $title, source: $source, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KnowledgeCitationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.year, year) || other.year == year));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, source, year);

  /// Create a copy of KnowledgeCitation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KnowledgeCitationImplCopyWith<_$KnowledgeCitationImpl> get copyWith =>
      __$$KnowledgeCitationImplCopyWithImpl<_$KnowledgeCitationImpl>(
          this, _$identity);
}

abstract class _KnowledgeCitation implements KnowledgeCitation {
  const factory _KnowledgeCitation(
      {required final String id,
      required final String title,
      required final String source,
      required final int year}) = _$KnowledgeCitationImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get source;
  @override
  int get year;

  /// Create a copy of KnowledgeCitation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KnowledgeCitationImplCopyWith<_$KnowledgeCitationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KnowledgeDocument {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  KnowledgeDocumentType get type => throw _privateConstructorUsedError;
  String get excerpt => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  double get confidenceScore => throw _privateConstructorUsedError;
  List<KnowledgeCitation> get citations => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get fullContent => throw _privateConstructorUsedError;

  /// Create a copy of KnowledgeDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KnowledgeDocumentCopyWith<KnowledgeDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnowledgeDocumentCopyWith<$Res> {
  factory $KnowledgeDocumentCopyWith(
          KnowledgeDocument value, $Res Function(KnowledgeDocument) then) =
      _$KnowledgeDocumentCopyWithImpl<$Res, KnowledgeDocument>;
  @useResult
  $Res call(
      {String id,
      String title,
      KnowledgeDocumentType type,
      String excerpt,
      String source,
      DateTime date,
      double confidenceScore,
      List<KnowledgeCitation> citations,
      List<String> tags,
      String fullContent});
}

/// @nodoc
class _$KnowledgeDocumentCopyWithImpl<$Res, $Val extends KnowledgeDocument>
    implements $KnowledgeDocumentCopyWith<$Res> {
  _$KnowledgeDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KnowledgeDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? excerpt = null,
    Object? source = null,
    Object? date = null,
    Object? confidenceScore = null,
    Object? citations = null,
    Object? tags = null,
    Object? fullContent = null,
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
              as KnowledgeDocumentType,
      excerpt: null == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      confidenceScore: null == confidenceScore
          ? _value.confidenceScore
          : confidenceScore // ignore: cast_nullable_to_non_nullable
              as double,
      citations: null == citations
          ? _value.citations
          : citations // ignore: cast_nullable_to_non_nullable
              as List<KnowledgeCitation>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fullContent: null == fullContent
          ? _value.fullContent
          : fullContent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KnowledgeDocumentImplCopyWith<$Res>
    implements $KnowledgeDocumentCopyWith<$Res> {
  factory _$$KnowledgeDocumentImplCopyWith(_$KnowledgeDocumentImpl value,
          $Res Function(_$KnowledgeDocumentImpl) then) =
      __$$KnowledgeDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      KnowledgeDocumentType type,
      String excerpt,
      String source,
      DateTime date,
      double confidenceScore,
      List<KnowledgeCitation> citations,
      List<String> tags,
      String fullContent});
}

/// @nodoc
class __$$KnowledgeDocumentImplCopyWithImpl<$Res>
    extends _$KnowledgeDocumentCopyWithImpl<$Res, _$KnowledgeDocumentImpl>
    implements _$$KnowledgeDocumentImplCopyWith<$Res> {
  __$$KnowledgeDocumentImplCopyWithImpl(_$KnowledgeDocumentImpl _value,
      $Res Function(_$KnowledgeDocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of KnowledgeDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? excerpt = null,
    Object? source = null,
    Object? date = null,
    Object? confidenceScore = null,
    Object? citations = null,
    Object? tags = null,
    Object? fullContent = null,
  }) {
    return _then(_$KnowledgeDocumentImpl(
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
              as KnowledgeDocumentType,
      excerpt: null == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      confidenceScore: null == confidenceScore
          ? _value.confidenceScore
          : confidenceScore // ignore: cast_nullable_to_non_nullable
              as double,
      citations: null == citations
          ? _value._citations
          : citations // ignore: cast_nullable_to_non_nullable
              as List<KnowledgeCitation>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fullContent: null == fullContent
          ? _value.fullContent
          : fullContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KnowledgeDocumentImpl implements _KnowledgeDocument {
  const _$KnowledgeDocumentImpl(
      {required this.id,
      required this.title,
      required this.type,
      required this.excerpt,
      required this.source,
      required this.date,
      required this.confidenceScore,
      required final List<KnowledgeCitation> citations,
      required final List<String> tags,
      required this.fullContent})
      : _citations = citations,
        _tags = tags;

  @override
  final String id;
  @override
  final String title;
  @override
  final KnowledgeDocumentType type;
  @override
  final String excerpt;
  @override
  final String source;
  @override
  final DateTime date;
  @override
  final double confidenceScore;
  final List<KnowledgeCitation> _citations;
  @override
  List<KnowledgeCitation> get citations {
    if (_citations is EqualUnmodifiableListView) return _citations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_citations);
  }

  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String fullContent;

  @override
  String toString() {
    return 'KnowledgeDocument(id: $id, title: $title, type: $type, excerpt: $excerpt, source: $source, date: $date, confidenceScore: $confidenceScore, citations: $citations, tags: $tags, fullContent: $fullContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KnowledgeDocumentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.confidenceScore, confidenceScore) ||
                other.confidenceScore == confidenceScore) &&
            const DeepCollectionEquality()
                .equals(other._citations, _citations) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.fullContent, fullContent) ||
                other.fullContent == fullContent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      type,
      excerpt,
      source,
      date,
      confidenceScore,
      const DeepCollectionEquality().hash(_citations),
      const DeepCollectionEquality().hash(_tags),
      fullContent);

  /// Create a copy of KnowledgeDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KnowledgeDocumentImplCopyWith<_$KnowledgeDocumentImpl> get copyWith =>
      __$$KnowledgeDocumentImplCopyWithImpl<_$KnowledgeDocumentImpl>(
          this, _$identity);
}

abstract class _KnowledgeDocument implements KnowledgeDocument {
  const factory _KnowledgeDocument(
      {required final String id,
      required final String title,
      required final KnowledgeDocumentType type,
      required final String excerpt,
      required final String source,
      required final DateTime date,
      required final double confidenceScore,
      required final List<KnowledgeCitation> citations,
      required final List<String> tags,
      required final String fullContent}) = _$KnowledgeDocumentImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  KnowledgeDocumentType get type;
  @override
  String get excerpt;
  @override
  String get source;
  @override
  DateTime get date;
  @override
  double get confidenceScore;
  @override
  List<KnowledgeCitation> get citations;
  @override
  List<String> get tags;
  @override
  String get fullContent;

  /// Create a copy of KnowledgeDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KnowledgeDocumentImplCopyWith<_$KnowledgeDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchFilters {
  Set<KnowledgeDocumentType> get selectedTypes =>
      throw _privateConstructorUsedError;
  double get minConfidence => throw _privateConstructorUsedError;

  /// Create a copy of SearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchFiltersCopyWith<SearchFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFiltersCopyWith<$Res> {
  factory $SearchFiltersCopyWith(
          SearchFilters value, $Res Function(SearchFilters) then) =
      _$SearchFiltersCopyWithImpl<$Res, SearchFilters>;
  @useResult
  $Res call({Set<KnowledgeDocumentType> selectedTypes, double minConfidence});
}

/// @nodoc
class _$SearchFiltersCopyWithImpl<$Res, $Val extends SearchFilters>
    implements $SearchFiltersCopyWith<$Res> {
  _$SearchFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTypes = null,
    Object? minConfidence = null,
  }) {
    return _then(_value.copyWith(
      selectedTypes: null == selectedTypes
          ? _value.selectedTypes
          : selectedTypes // ignore: cast_nullable_to_non_nullable
              as Set<KnowledgeDocumentType>,
      minConfidence: null == minConfidence
          ? _value.minConfidence
          : minConfidence // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchFiltersImplCopyWith<$Res>
    implements $SearchFiltersCopyWith<$Res> {
  factory _$$SearchFiltersImplCopyWith(
          _$SearchFiltersImpl value, $Res Function(_$SearchFiltersImpl) then) =
      __$$SearchFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<KnowledgeDocumentType> selectedTypes, double minConfidence});
}

/// @nodoc
class __$$SearchFiltersImplCopyWithImpl<$Res>
    extends _$SearchFiltersCopyWithImpl<$Res, _$SearchFiltersImpl>
    implements _$$SearchFiltersImplCopyWith<$Res> {
  __$$SearchFiltersImplCopyWithImpl(
      _$SearchFiltersImpl _value, $Res Function(_$SearchFiltersImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTypes = null,
    Object? minConfidence = null,
  }) {
    return _then(_$SearchFiltersImpl(
      selectedTypes: null == selectedTypes
          ? _value._selectedTypes
          : selectedTypes // ignore: cast_nullable_to_non_nullable
              as Set<KnowledgeDocumentType>,
      minConfidence: null == minConfidence
          ? _value.minConfidence
          : minConfidence // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SearchFiltersImpl implements _SearchFilters {
  const _$SearchFiltersImpl(
      {final Set<KnowledgeDocumentType> selectedTypes = const {},
      this.minConfidence = 0.0})
      : _selectedTypes = selectedTypes;

  final Set<KnowledgeDocumentType> _selectedTypes;
  @override
  @JsonKey()
  Set<KnowledgeDocumentType> get selectedTypes {
    if (_selectedTypes is EqualUnmodifiableSetView) return _selectedTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_selectedTypes);
  }

  @override
  @JsonKey()
  final double minConfidence;

  @override
  String toString() {
    return 'SearchFilters(selectedTypes: $selectedTypes, minConfidence: $minConfidence)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFiltersImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedTypes, _selectedTypes) &&
            (identical(other.minConfidence, minConfidence) ||
                other.minConfidence == minConfidence));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_selectedTypes), minConfidence);

  /// Create a copy of SearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFiltersImplCopyWith<_$SearchFiltersImpl> get copyWith =>
      __$$SearchFiltersImplCopyWithImpl<_$SearchFiltersImpl>(this, _$identity);
}

abstract class _SearchFilters implements SearchFilters {
  const factory _SearchFilters(
      {final Set<KnowledgeDocumentType> selectedTypes,
      final double minConfidence}) = _$SearchFiltersImpl;

  @override
  Set<KnowledgeDocumentType> get selectedTypes;
  @override
  double get minConfidence;

  /// Create a copy of SearchFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchFiltersImplCopyWith<_$SearchFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  String get query => throw _privateConstructorUsedError;
  SearchFilters get filters => throw _privateConstructorUsedError;
  List<KnowledgeDocument> get results => throw _privateConstructorUsedError;
  SearchStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {String query,
      SearchFilters filters,
      List<KnowledgeDocument> results,
      SearchStatus status});

  $SearchFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? filters = null,
    Object? results = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as SearchFilters,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<KnowledgeDocument>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
    ) as $Val);
  }

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchFiltersCopyWith<$Res> get filters {
    return $SearchFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      SearchFilters filters,
      List<KnowledgeDocument> results,
      SearchStatus status});

  @override
  $SearchFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? filters = null,
    Object? results = null,
    Object? status = null,
  }) {
    return _then(_$SearchStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as SearchFilters,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<KnowledgeDocument>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {this.query = '',
      this.filters = const SearchFilters(),
      final List<KnowledgeDocument> results = const [],
      this.status = SearchStatus.idle})
      : _results = results;

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final SearchFilters filters;
  final List<KnowledgeDocument> _results;
  @override
  @JsonKey()
  List<KnowledgeDocument> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey()
  final SearchStatus status;

  @override
  String toString() {
    return 'SearchState(query: $query, filters: $filters, results: $results, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.filters, filters) || other.filters == filters) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, filters,
      const DeepCollectionEquality().hash(_results), status);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final String query,
      final SearchFilters filters,
      final List<KnowledgeDocument> results,
      final SearchStatus status}) = _$SearchStateImpl;

  @override
  String get query;
  @override
  SearchFilters get filters;
  @override
  List<KnowledgeDocument> get results;
  @override
  SearchStatus get status;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
