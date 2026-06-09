// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assistant_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AgentStep {
  String get label => throw _privateConstructorUsedError;
  AgentStepStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of AgentStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AgentStepCopyWith<AgentStep> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentStepCopyWith<$Res> {
  factory $AgentStepCopyWith(AgentStep value, $Res Function(AgentStep) then) =
      _$AgentStepCopyWithImpl<$Res, AgentStep>;
  @useResult
  $Res call({String label, AgentStepStatus status});
}

/// @nodoc
class _$AgentStepCopyWithImpl<$Res, $Val extends AgentStep>
    implements $AgentStepCopyWith<$Res> {
  _$AgentStepCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgentStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AgentStepStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgentStepImplCopyWith<$Res>
    implements $AgentStepCopyWith<$Res> {
  factory _$$AgentStepImplCopyWith(
          _$AgentStepImpl value, $Res Function(_$AgentStepImpl) then) =
      __$$AgentStepImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, AgentStepStatus status});
}

/// @nodoc
class __$$AgentStepImplCopyWithImpl<$Res>
    extends _$AgentStepCopyWithImpl<$Res, _$AgentStepImpl>
    implements _$$AgentStepImplCopyWith<$Res> {
  __$$AgentStepImplCopyWithImpl(
      _$AgentStepImpl _value, $Res Function(_$AgentStepImpl) _then)
      : super(_value, _then);

  /// Create a copy of AgentStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? status = null,
  }) {
    return _then(_$AgentStepImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AgentStepStatus,
    ));
  }
}

/// @nodoc

class _$AgentStepImpl implements _AgentStep {
  const _$AgentStepImpl({required this.label, required this.status});

  @override
  final String label;
  @override
  final AgentStepStatus status;

  @override
  String toString() {
    return 'AgentStep(label: $label, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentStepImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, status);

  /// Create a copy of AgentStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentStepImplCopyWith<_$AgentStepImpl> get copyWith =>
      __$$AgentStepImplCopyWithImpl<_$AgentStepImpl>(this, _$identity);
}

abstract class _AgentStep implements AgentStep {
  const factory _AgentStep(
      {required final String label,
      required final AgentStepStatus status}) = _$AgentStepImpl;

  @override
  String get label;
  @override
  AgentStepStatus get status;

  /// Create a copy of AgentStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgentStepImplCopyWith<_$AgentStepImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SourceReference {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  SourceType get type => throw _privateConstructorUsedError;
  String get excerpt => throw _privateConstructorUsedError;

  /// Create a copy of SourceReference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SourceReferenceCopyWith<SourceReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceReferenceCopyWith<$Res> {
  factory $SourceReferenceCopyWith(
          SourceReference value, $Res Function(SourceReference) then) =
      _$SourceReferenceCopyWithImpl<$Res, SourceReference>;
  @useResult
  $Res call({String id, String title, SourceType type, String excerpt});
}

/// @nodoc
class _$SourceReferenceCopyWithImpl<$Res, $Val extends SourceReference>
    implements $SourceReferenceCopyWith<$Res> {
  _$SourceReferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SourceReference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? excerpt = null,
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
              as SourceType,
      excerpt: null == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceReferenceImplCopyWith<$Res>
    implements $SourceReferenceCopyWith<$Res> {
  factory _$$SourceReferenceImplCopyWith(_$SourceReferenceImpl value,
          $Res Function(_$SourceReferenceImpl) then) =
      __$$SourceReferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, SourceType type, String excerpt});
}

/// @nodoc
class __$$SourceReferenceImplCopyWithImpl<$Res>
    extends _$SourceReferenceCopyWithImpl<$Res, _$SourceReferenceImpl>
    implements _$$SourceReferenceImplCopyWith<$Res> {
  __$$SourceReferenceImplCopyWithImpl(
      _$SourceReferenceImpl _value, $Res Function(_$SourceReferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of SourceReference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? excerpt = null,
  }) {
    return _then(_$SourceReferenceImpl(
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
              as SourceType,
      excerpt: null == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SourceReferenceImpl implements _SourceReference {
  const _$SourceReferenceImpl(
      {required this.id,
      required this.title,
      required this.type,
      required this.excerpt});

  @override
  final String id;
  @override
  final String title;
  @override
  final SourceType type;
  @override
  final String excerpt;

  @override
  String toString() {
    return 'SourceReference(id: $id, title: $title, type: $type, excerpt: $excerpt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceReferenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, type, excerpt);

  /// Create a copy of SourceReference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceReferenceImplCopyWith<_$SourceReferenceImpl> get copyWith =>
      __$$SourceReferenceImplCopyWithImpl<_$SourceReferenceImpl>(
          this, _$identity);
}

abstract class _SourceReference implements SourceReference {
  const factory _SourceReference(
      {required final String id,
      required final String title,
      required final SourceType type,
      required final String excerpt}) = _$SourceReferenceImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  SourceType get type;
  @override
  String get excerpt;

  /// Create a copy of SourceReference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceReferenceImplCopyWith<_$SourceReferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BriefingCard {
  String get id => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  BriefingResponseType get responseType => throw _privateConstructorUsedError;
  String get headline => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  List<SourceReference> get sources => throw _privateConstructorUsedError;
  List<AgentStep> get agentSteps => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Create a copy of BriefingCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BriefingCardCopyWith<BriefingCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BriefingCardCopyWith<$Res> {
  factory $BriefingCardCopyWith(
          BriefingCard value, $Res Function(BriefingCard) then) =
      _$BriefingCardCopyWithImpl<$Res, BriefingCard>;
  @useResult
  $Res call(
      {String id,
      String query,
      BriefingResponseType responseType,
      String headline,
      String body,
      List<SourceReference> sources,
      List<AgentStep> agentSteps,
      DateTime timestamp});
}

/// @nodoc
class _$BriefingCardCopyWithImpl<$Res, $Val extends BriefingCard>
    implements $BriefingCardCopyWith<$Res> {
  _$BriefingCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BriefingCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? query = null,
    Object? responseType = null,
    Object? headline = null,
    Object? body = null,
    Object? sources = null,
    Object? agentSteps = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      responseType: null == responseType
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as BriefingResponseType,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      sources: null == sources
          ? _value.sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<SourceReference>,
      agentSteps: null == agentSteps
          ? _value.agentSteps
          : agentSteps // ignore: cast_nullable_to_non_nullable
              as List<AgentStep>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BriefingCardImplCopyWith<$Res>
    implements $BriefingCardCopyWith<$Res> {
  factory _$$BriefingCardImplCopyWith(
          _$BriefingCardImpl value, $Res Function(_$BriefingCardImpl) then) =
      __$$BriefingCardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String query,
      BriefingResponseType responseType,
      String headline,
      String body,
      List<SourceReference> sources,
      List<AgentStep> agentSteps,
      DateTime timestamp});
}

/// @nodoc
class __$$BriefingCardImplCopyWithImpl<$Res>
    extends _$BriefingCardCopyWithImpl<$Res, _$BriefingCardImpl>
    implements _$$BriefingCardImplCopyWith<$Res> {
  __$$BriefingCardImplCopyWithImpl(
      _$BriefingCardImpl _value, $Res Function(_$BriefingCardImpl) _then)
      : super(_value, _then);

  /// Create a copy of BriefingCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? query = null,
    Object? responseType = null,
    Object? headline = null,
    Object? body = null,
    Object? sources = null,
    Object? agentSteps = null,
    Object? timestamp = null,
  }) {
    return _then(_$BriefingCardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      responseType: null == responseType
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as BriefingResponseType,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      sources: null == sources
          ? _value._sources
          : sources // ignore: cast_nullable_to_non_nullable
              as List<SourceReference>,
      agentSteps: null == agentSteps
          ? _value._agentSteps
          : agentSteps // ignore: cast_nullable_to_non_nullable
              as List<AgentStep>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$BriefingCardImpl implements _BriefingCard {
  const _$BriefingCardImpl(
      {required this.id,
      required this.query,
      required this.responseType,
      required this.headline,
      required this.body,
      required final List<SourceReference> sources,
      required final List<AgentStep> agentSteps,
      required this.timestamp})
      : _sources = sources,
        _agentSteps = agentSteps;

  @override
  final String id;
  @override
  final String query;
  @override
  final BriefingResponseType responseType;
  @override
  final String headline;
  @override
  final String body;
  final List<SourceReference> _sources;
  @override
  List<SourceReference> get sources {
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sources);
  }

  final List<AgentStep> _agentSteps;
  @override
  List<AgentStep> get agentSteps {
    if (_agentSteps is EqualUnmodifiableListView) return _agentSteps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_agentSteps);
  }

  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'BriefingCard(id: $id, query: $query, responseType: $responseType, headline: $headline, body: $body, sources: $sources, agentSteps: $agentSteps, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BriefingCardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.responseType, responseType) ||
                other.responseType == responseType) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            const DeepCollectionEquality()
                .equals(other._agentSteps, _agentSteps) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      query,
      responseType,
      headline,
      body,
      const DeepCollectionEquality().hash(_sources),
      const DeepCollectionEquality().hash(_agentSteps),
      timestamp);

  /// Create a copy of BriefingCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BriefingCardImplCopyWith<_$BriefingCardImpl> get copyWith =>
      __$$BriefingCardImplCopyWithImpl<_$BriefingCardImpl>(this, _$identity);
}

abstract class _BriefingCard implements BriefingCard {
  const factory _BriefingCard(
      {required final String id,
      required final String query,
      required final BriefingResponseType responseType,
      required final String headline,
      required final String body,
      required final List<SourceReference> sources,
      required final List<AgentStep> agentSteps,
      required final DateTime timestamp}) = _$BriefingCardImpl;

  @override
  String get id;
  @override
  String get query;
  @override
  BriefingResponseType get responseType;
  @override
  String get headline;
  @override
  String get body;
  @override
  List<SourceReference> get sources;
  @override
  List<AgentStep> get agentSteps;
  @override
  DateTime get timestamp;

  /// Create a copy of BriefingCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BriefingCardImplCopyWith<_$BriefingCardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AssistantSession {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<BriefingCard> get cards => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of AssistantSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssistantSessionCopyWith<AssistantSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistantSessionCopyWith<$Res> {
  factory $AssistantSessionCopyWith(
          AssistantSession value, $Res Function(AssistantSession) then) =
      _$AssistantSessionCopyWithImpl<$Res, AssistantSession>;
  @useResult
  $Res call(
      {String id, String title, List<BriefingCard> cards, DateTime createdAt});
}

/// @nodoc
class _$AssistantSessionCopyWithImpl<$Res, $Val extends AssistantSession>
    implements $AssistantSessionCopyWith<$Res> {
  _$AssistantSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssistantSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? cards = null,
    Object? createdAt = null,
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
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<BriefingCard>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssistantSessionImplCopyWith<$Res>
    implements $AssistantSessionCopyWith<$Res> {
  factory _$$AssistantSessionImplCopyWith(_$AssistantSessionImpl value,
          $Res Function(_$AssistantSessionImpl) then) =
      __$$AssistantSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, List<BriefingCard> cards, DateTime createdAt});
}

/// @nodoc
class __$$AssistantSessionImplCopyWithImpl<$Res>
    extends _$AssistantSessionCopyWithImpl<$Res, _$AssistantSessionImpl>
    implements _$$AssistantSessionImplCopyWith<$Res> {
  __$$AssistantSessionImplCopyWithImpl(_$AssistantSessionImpl _value,
      $Res Function(_$AssistantSessionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssistantSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? cards = null,
    Object? createdAt = null,
  }) {
    return _then(_$AssistantSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<BriefingCard>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$AssistantSessionImpl implements _AssistantSession {
  const _$AssistantSessionImpl(
      {required this.id,
      required this.title,
      required final List<BriefingCard> cards,
      required this.createdAt})
      : _cards = cards;

  @override
  final String id;
  @override
  final String title;
  final List<BriefingCard> _cards;
  @override
  List<BriefingCard> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'AssistantSession(id: $id, title: $title, cards: $cards, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssistantSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title,
      const DeepCollectionEquality().hash(_cards), createdAt);

  /// Create a copy of AssistantSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssistantSessionImplCopyWith<_$AssistantSessionImpl> get copyWith =>
      __$$AssistantSessionImplCopyWithImpl<_$AssistantSessionImpl>(
          this, _$identity);
}

abstract class _AssistantSession implements AssistantSession {
  const factory _AssistantSession(
      {required final String id,
      required final String title,
      required final List<BriefingCard> cards,
      required final DateTime createdAt}) = _$AssistantSessionImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  List<BriefingCard> get cards;
  @override
  DateTime get createdAt;

  /// Create a copy of AssistantSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssistantSessionImplCopyWith<_$AssistantSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AssistantState {
  List<AssistantSession> get sessions => throw _privateConstructorUsedError;
  String? get activeSessionId => throw _privateConstructorUsedError;
  bool get isGenerating => throw _privateConstructorUsedError;
  List<AgentStep>? get generatingSteps => throw _privateConstructorUsedError;

  /// Create a copy of AssistantState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssistantStateCopyWith<AssistantState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistantStateCopyWith<$Res> {
  factory $AssistantStateCopyWith(
          AssistantState value, $Res Function(AssistantState) then) =
      _$AssistantStateCopyWithImpl<$Res, AssistantState>;
  @useResult
  $Res call(
      {List<AssistantSession> sessions,
      String? activeSessionId,
      bool isGenerating,
      List<AgentStep>? generatingSteps});
}

/// @nodoc
class _$AssistantStateCopyWithImpl<$Res, $Val extends AssistantState>
    implements $AssistantStateCopyWith<$Res> {
  _$AssistantStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssistantState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
    Object? activeSessionId = freezed,
    Object? isGenerating = null,
    Object? generatingSteps = freezed,
  }) {
    return _then(_value.copyWith(
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<AssistantSession>,
      activeSessionId: freezed == activeSessionId
          ? _value.activeSessionId
          : activeSessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      isGenerating: null == isGenerating
          ? _value.isGenerating
          : isGenerating // ignore: cast_nullable_to_non_nullable
              as bool,
      generatingSteps: freezed == generatingSteps
          ? _value.generatingSteps
          : generatingSteps // ignore: cast_nullable_to_non_nullable
              as List<AgentStep>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssistantStateImplCopyWith<$Res>
    implements $AssistantStateCopyWith<$Res> {
  factory _$$AssistantStateImplCopyWith(_$AssistantStateImpl value,
          $Res Function(_$AssistantStateImpl) then) =
      __$$AssistantStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AssistantSession> sessions,
      String? activeSessionId,
      bool isGenerating,
      List<AgentStep>? generatingSteps});
}

/// @nodoc
class __$$AssistantStateImplCopyWithImpl<$Res>
    extends _$AssistantStateCopyWithImpl<$Res, _$AssistantStateImpl>
    implements _$$AssistantStateImplCopyWith<$Res> {
  __$$AssistantStateImplCopyWithImpl(
      _$AssistantStateImpl _value, $Res Function(_$AssistantStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AssistantState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
    Object? activeSessionId = freezed,
    Object? isGenerating = null,
    Object? generatingSteps = freezed,
  }) {
    return _then(_$AssistantStateImpl(
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<AssistantSession>,
      activeSessionId: freezed == activeSessionId
          ? _value.activeSessionId
          : activeSessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      isGenerating: null == isGenerating
          ? _value.isGenerating
          : isGenerating // ignore: cast_nullable_to_non_nullable
              as bool,
      generatingSteps: freezed == generatingSteps
          ? _value._generatingSteps
          : generatingSteps // ignore: cast_nullable_to_non_nullable
              as List<AgentStep>?,
    ));
  }
}

/// @nodoc

class _$AssistantStateImpl implements _AssistantState {
  const _$AssistantStateImpl(
      {required final List<AssistantSession> sessions,
      required this.activeSessionId,
      this.isGenerating = false,
      final List<AgentStep>? generatingSteps})
      : _sessions = sessions,
        _generatingSteps = generatingSteps;

  final List<AssistantSession> _sessions;
  @override
  List<AssistantSession> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  final String? activeSessionId;
  @override
  @JsonKey()
  final bool isGenerating;
  final List<AgentStep>? _generatingSteps;
  @override
  List<AgentStep>? get generatingSteps {
    final value = _generatingSteps;
    if (value == null) return null;
    if (_generatingSteps is EqualUnmodifiableListView) return _generatingSteps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AssistantState(sessions: $sessions, activeSessionId: $activeSessionId, isGenerating: $isGenerating, generatingSteps: $generatingSteps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssistantStateImpl &&
            const DeepCollectionEquality().equals(other._sessions, _sessions) &&
            (identical(other.activeSessionId, activeSessionId) ||
                other.activeSessionId == activeSessionId) &&
            (identical(other.isGenerating, isGenerating) ||
                other.isGenerating == isGenerating) &&
            const DeepCollectionEquality()
                .equals(other._generatingSteps, _generatingSteps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sessions),
      activeSessionId,
      isGenerating,
      const DeepCollectionEquality().hash(_generatingSteps));

  /// Create a copy of AssistantState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssistantStateImplCopyWith<_$AssistantStateImpl> get copyWith =>
      __$$AssistantStateImplCopyWithImpl<_$AssistantStateImpl>(
          this, _$identity);
}

abstract class _AssistantState implements AssistantState {
  const factory _AssistantState(
      {required final List<AssistantSession> sessions,
      required final String? activeSessionId,
      final bool isGenerating,
      final List<AgentStep>? generatingSteps}) = _$AssistantStateImpl;

  @override
  List<AssistantSession> get sessions;
  @override
  String? get activeSessionId;
  @override
  bool get isGenerating;
  @override
  List<AgentStep>? get generatingSteps;

  /// Create a copy of AssistantState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssistantStateImplCopyWith<_$AssistantStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
