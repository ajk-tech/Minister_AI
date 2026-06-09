// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PriorityAction {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get department => throw _privateConstructorUsedError;
  UrgencyLevel get urgency => throw _privateConstructorUsedError;
  DateTime get dueAt => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;

  /// Create a copy of PriorityAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriorityActionCopyWith<PriorityAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriorityActionCopyWith<$Res> {
  factory $PriorityActionCopyWith(
          PriorityAction value, $Res Function(PriorityAction) then) =
      _$PriorityActionCopyWithImpl<$Res, PriorityAction>;
  @useResult
  $Res call(
      {String id,
      String title,
      String department,
      UrgencyLevel urgency,
      DateTime dueAt,
      bool isRead});
}

/// @nodoc
class _$PriorityActionCopyWithImpl<$Res, $Val extends PriorityAction>
    implements $PriorityActionCopyWith<$Res> {
  _$PriorityActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriorityAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? department = null,
    Object? urgency = null,
    Object? dueAt = null,
    Object? isRead = null,
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
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      urgency: null == urgency
          ? _value.urgency
          : urgency // ignore: cast_nullable_to_non_nullable
              as UrgencyLevel,
      dueAt: null == dueAt
          ? _value.dueAt
          : dueAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriorityActionImplCopyWith<$Res>
    implements $PriorityActionCopyWith<$Res> {
  factory _$$PriorityActionImplCopyWith(_$PriorityActionImpl value,
          $Res Function(_$PriorityActionImpl) then) =
      __$$PriorityActionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String department,
      UrgencyLevel urgency,
      DateTime dueAt,
      bool isRead});
}

/// @nodoc
class __$$PriorityActionImplCopyWithImpl<$Res>
    extends _$PriorityActionCopyWithImpl<$Res, _$PriorityActionImpl>
    implements _$$PriorityActionImplCopyWith<$Res> {
  __$$PriorityActionImplCopyWithImpl(
      _$PriorityActionImpl _value, $Res Function(_$PriorityActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriorityAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? department = null,
    Object? urgency = null,
    Object? dueAt = null,
    Object? isRead = null,
  }) {
    return _then(_$PriorityActionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      department: null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String,
      urgency: null == urgency
          ? _value.urgency
          : urgency // ignore: cast_nullable_to_non_nullable
              as UrgencyLevel,
      dueAt: null == dueAt
          ? _value.dueAt
          : dueAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PriorityActionImpl implements _PriorityAction {
  const _$PriorityActionImpl(
      {required this.id,
      required this.title,
      required this.department,
      required this.urgency,
      required this.dueAt,
      this.isRead = false});

  @override
  final String id;
  @override
  final String title;
  @override
  final String department;
  @override
  final UrgencyLevel urgency;
  @override
  final DateTime dueAt;
  @override
  @JsonKey()
  final bool isRead;

  @override
  String toString() {
    return 'PriorityAction(id: $id, title: $title, department: $department, urgency: $urgency, dueAt: $dueAt, isRead: $isRead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriorityActionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.urgency, urgency) || other.urgency == urgency) &&
            (identical(other.dueAt, dueAt) || other.dueAt == dueAt) &&
            (identical(other.isRead, isRead) || other.isRead == isRead));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, department, urgency, dueAt, isRead);

  /// Create a copy of PriorityAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriorityActionImplCopyWith<_$PriorityActionImpl> get copyWith =>
      __$$PriorityActionImplCopyWithImpl<_$PriorityActionImpl>(
          this, _$identity);
}

abstract class _PriorityAction implements PriorityAction {
  const factory _PriorityAction(
      {required final String id,
      required final String title,
      required final String department,
      required final UrgencyLevel urgency,
      required final DateTime dueAt,
      final bool isRead}) = _$PriorityActionImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get department;
  @override
  UrgencyLevel get urgency;
  @override
  DateTime get dueAt;
  @override
  bool get isRead;

  /// Create a copy of PriorityAction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriorityActionImplCopyWith<_$PriorityActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UpcomingMeeting {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  int get durationMinutes => throw _privateConstructorUsedError;
  int get participantCount => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  MeetingType get type => throw _privateConstructorUsedError;

  /// Create a copy of UpcomingMeeting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpcomingMeetingCopyWith<UpcomingMeeting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingMeetingCopyWith<$Res> {
  factory $UpcomingMeetingCopyWith(
          UpcomingMeeting value, $Res Function(UpcomingMeeting) then) =
      _$UpcomingMeetingCopyWithImpl<$Res, UpcomingMeeting>;
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime time,
      int durationMinutes,
      int participantCount,
      String location,
      MeetingType type});
}

/// @nodoc
class _$UpcomingMeetingCopyWithImpl<$Res, $Val extends UpcomingMeeting>
    implements $UpcomingMeetingCopyWith<$Res> {
  _$UpcomingMeetingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpcomingMeeting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? time = null,
    Object? durationMinutes = null,
    Object? participantCount = null,
    Object? location = null,
    Object? type = null,
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
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      participantCount: null == participantCount
          ? _value.participantCount
          : participantCount // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeetingType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpcomingMeetingImplCopyWith<$Res>
    implements $UpcomingMeetingCopyWith<$Res> {
  factory _$$UpcomingMeetingImplCopyWith(_$UpcomingMeetingImpl value,
          $Res Function(_$UpcomingMeetingImpl) then) =
      __$$UpcomingMeetingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime time,
      int durationMinutes,
      int participantCount,
      String location,
      MeetingType type});
}

/// @nodoc
class __$$UpcomingMeetingImplCopyWithImpl<$Res>
    extends _$UpcomingMeetingCopyWithImpl<$Res, _$UpcomingMeetingImpl>
    implements _$$UpcomingMeetingImplCopyWith<$Res> {
  __$$UpcomingMeetingImplCopyWithImpl(
      _$UpcomingMeetingImpl _value, $Res Function(_$UpcomingMeetingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpcomingMeeting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? time = null,
    Object? durationMinutes = null,
    Object? participantCount = null,
    Object? location = null,
    Object? type = null,
  }) {
    return _then(_$UpcomingMeetingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationMinutes: null == durationMinutes
          ? _value.durationMinutes
          : durationMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      participantCount: null == participantCount
          ? _value.participantCount
          : participantCount // ignore: cast_nullable_to_non_nullable
              as int,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MeetingType,
    ));
  }
}

/// @nodoc

class _$UpcomingMeetingImpl implements _UpcomingMeeting {
  const _$UpcomingMeetingImpl(
      {required this.id,
      required this.title,
      required this.time,
      required this.durationMinutes,
      required this.participantCount,
      required this.location,
      required this.type});

  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime time;
  @override
  final int durationMinutes;
  @override
  final int participantCount;
  @override
  final String location;
  @override
  final MeetingType type;

  @override
  String toString() {
    return 'UpcomingMeeting(id: $id, title: $title, time: $time, durationMinutes: $durationMinutes, participantCount: $participantCount, location: $location, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpcomingMeetingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.participantCount, participantCount) ||
                other.participantCount == participantCount) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, time, durationMinutes,
      participantCount, location, type);

  /// Create a copy of UpcomingMeeting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpcomingMeetingImplCopyWith<_$UpcomingMeetingImpl> get copyWith =>
      __$$UpcomingMeetingImplCopyWithImpl<_$UpcomingMeetingImpl>(
          this, _$identity);
}

abstract class _UpcomingMeeting implements UpcomingMeeting {
  const factory _UpcomingMeeting(
      {required final String id,
      required final String title,
      required final DateTime time,
      required final int durationMinutes,
      required final int participantCount,
      required final String location,
      required final MeetingType type}) = _$UpcomingMeetingImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  DateTime get time;
  @override
  int get durationMinutes;
  @override
  int get participantCount;
  @override
  String get location;
  @override
  MeetingType get type;

  /// Create a copy of UpcomingMeeting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpcomingMeetingImplCopyWith<_$UpcomingMeetingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PendingTask {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get assignedTo => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  TaskStatus get status => throw _privateConstructorUsedError;
  UrgencyLevel get priority => throw _privateConstructorUsedError;

  /// Create a copy of PendingTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PendingTaskCopyWith<PendingTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingTaskCopyWith<$Res> {
  factory $PendingTaskCopyWith(
          PendingTask value, $Res Function(PendingTask) then) =
      _$PendingTaskCopyWithImpl<$Res, PendingTask>;
  @useResult
  $Res call(
      {String id,
      String title,
      String assignedTo,
      DateTime dueDate,
      TaskStatus status,
      UrgencyLevel priority});
}

/// @nodoc
class _$PendingTaskCopyWithImpl<$Res, $Val extends PendingTask>
    implements $PendingTaskCopyWith<$Res> {
  _$PendingTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PendingTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? assignedTo = null,
    Object? dueDate = null,
    Object? status = null,
    Object? priority = null,
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
      assignedTo: null == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as UrgencyLevel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PendingTaskImplCopyWith<$Res>
    implements $PendingTaskCopyWith<$Res> {
  factory _$$PendingTaskImplCopyWith(
          _$PendingTaskImpl value, $Res Function(_$PendingTaskImpl) then) =
      __$$PendingTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String assignedTo,
      DateTime dueDate,
      TaskStatus status,
      UrgencyLevel priority});
}

/// @nodoc
class __$$PendingTaskImplCopyWithImpl<$Res>
    extends _$PendingTaskCopyWithImpl<$Res, _$PendingTaskImpl>
    implements _$$PendingTaskImplCopyWith<$Res> {
  __$$PendingTaskImplCopyWithImpl(
      _$PendingTaskImpl _value, $Res Function(_$PendingTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of PendingTask
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? assignedTo = null,
    Object? dueDate = null,
    Object? status = null,
    Object? priority = null,
  }) {
    return _then(_$PendingTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      assignedTo: null == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as UrgencyLevel,
    ));
  }
}

/// @nodoc

class _$PendingTaskImpl implements _PendingTask {
  const _$PendingTaskImpl(
      {required this.id,
      required this.title,
      required this.assignedTo,
      required this.dueDate,
      required this.status,
      required this.priority});

  @override
  final String id;
  @override
  final String title;
  @override
  final String assignedTo;
  @override
  final DateTime dueDate;
  @override
  final TaskStatus status;
  @override
  final UrgencyLevel priority;

  @override
  String toString() {
    return 'PendingTask(id: $id, title: $title, assignedTo: $assignedTo, dueDate: $dueDate, status: $status, priority: $priority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.assignedTo, assignedTo) ||
                other.assignedTo == assignedTo) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.priority, priority) ||
                other.priority == priority));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, assignedTo, dueDate, status, priority);

  /// Create a copy of PendingTask
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PendingTaskImplCopyWith<_$PendingTaskImpl> get copyWith =>
      __$$PendingTaskImplCopyWithImpl<_$PendingTaskImpl>(this, _$identity);
}

abstract class _PendingTask implements PendingTask {
  const factory _PendingTask(
      {required final String id,
      required final String title,
      required final String assignedTo,
      required final DateTime dueDate,
      required final TaskStatus status,
      required final UrgencyLevel priority}) = _$PendingTaskImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get assignedTo;
  @override
  DateTime get dueDate;
  @override
  TaskStatus get status;
  @override
  UrgencyLevel get priority;

  /// Create a copy of PendingTask
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PendingTaskImplCopyWith<_$PendingTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecentDraft {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  DateTime get lastEditedAt => throw _privateConstructorUsedError;
  int get wordCount => throw _privateConstructorUsedError;
  DraftStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of RecentDraft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecentDraftCopyWith<RecentDraft> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentDraftCopyWith<$Res> {
  factory $RecentDraftCopyWith(
          RecentDraft value, $Res Function(RecentDraft) then) =
      _$RecentDraftCopyWithImpl<$Res, RecentDraft>;
  @useResult
  $Res call(
      {String id,
      String title,
      String type,
      DateTime lastEditedAt,
      int wordCount,
      DraftStatus status});
}

/// @nodoc
class _$RecentDraftCopyWithImpl<$Res, $Val extends RecentDraft>
    implements $RecentDraftCopyWith<$Res> {
  _$RecentDraftCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecentDraft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? lastEditedAt = null,
    Object? wordCount = null,
    Object? status = null,
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
              as String,
      lastEditedAt: null == lastEditedAt
          ? _value.lastEditedAt
          : lastEditedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      wordCount: null == wordCount
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DraftStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentDraftImplCopyWith<$Res>
    implements $RecentDraftCopyWith<$Res> {
  factory _$$RecentDraftImplCopyWith(
          _$RecentDraftImpl value, $Res Function(_$RecentDraftImpl) then) =
      __$$RecentDraftImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String type,
      DateTime lastEditedAt,
      int wordCount,
      DraftStatus status});
}

/// @nodoc
class __$$RecentDraftImplCopyWithImpl<$Res>
    extends _$RecentDraftCopyWithImpl<$Res, _$RecentDraftImpl>
    implements _$$RecentDraftImplCopyWith<$Res> {
  __$$RecentDraftImplCopyWithImpl(
      _$RecentDraftImpl _value, $Res Function(_$RecentDraftImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecentDraft
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? lastEditedAt = null,
    Object? wordCount = null,
    Object? status = null,
  }) {
    return _then(_$RecentDraftImpl(
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
              as String,
      lastEditedAt: null == lastEditedAt
          ? _value.lastEditedAt
          : lastEditedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      wordCount: null == wordCount
          ? _value.wordCount
          : wordCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DraftStatus,
    ));
  }
}

/// @nodoc

class _$RecentDraftImpl implements _RecentDraft {
  const _$RecentDraftImpl(
      {required this.id,
      required this.title,
      required this.type,
      required this.lastEditedAt,
      required this.wordCount,
      required this.status});

  @override
  final String id;
  @override
  final String title;
  @override
  final String type;
  @override
  final DateTime lastEditedAt;
  @override
  final int wordCount;
  @override
  final DraftStatus status;

  @override
  String toString() {
    return 'RecentDraft(id: $id, title: $title, type: $type, lastEditedAt: $lastEditedAt, wordCount: $wordCount, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentDraftImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.lastEditedAt, lastEditedAt) ||
                other.lastEditedAt == lastEditedAt) &&
            (identical(other.wordCount, wordCount) ||
                other.wordCount == wordCount) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, type, lastEditedAt, wordCount, status);

  /// Create a copy of RecentDraft
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentDraftImplCopyWith<_$RecentDraftImpl> get copyWith =>
      __$$RecentDraftImplCopyWithImpl<_$RecentDraftImpl>(this, _$identity);
}

abstract class _RecentDraft implements RecentDraft {
  const factory _RecentDraft(
      {required final String id,
      required final String title,
      required final String type,
      required final DateTime lastEditedAt,
      required final int wordCount,
      required final DraftStatus status}) = _$RecentDraftImpl;

  @override
  String get id;
  @override
  String get title;
  @override
  String get type;
  @override
  DateTime get lastEditedAt;
  @override
  int get wordCount;
  @override
  DraftStatus get status;

  /// Create a copy of RecentDraft
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecentDraftImplCopyWith<_$RecentDraftImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$IntelligenceUpdate {
  String get id => throw _privateConstructorUsedError;
  String get headline => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  double get confidence => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  bool get isUrgent => throw _privateConstructorUsedError;

  /// Create a copy of IntelligenceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntelligenceUpdateCopyWith<IntelligenceUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntelligenceUpdateCopyWith<$Res> {
  factory $IntelligenceUpdateCopyWith(
          IntelligenceUpdate value, $Res Function(IntelligenceUpdate) then) =
      _$IntelligenceUpdateCopyWithImpl<$Res, IntelligenceUpdate>;
  @useResult
  $Res call(
      {String id,
      String headline,
      String source,
      String category,
      double confidence,
      DateTime publishedAt,
      bool isUrgent});
}

/// @nodoc
class _$IntelligenceUpdateCopyWithImpl<$Res, $Val extends IntelligenceUpdate>
    implements $IntelligenceUpdateCopyWith<$Res> {
  _$IntelligenceUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntelligenceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? headline = null,
    Object? source = null,
    Object? category = null,
    Object? confidence = null,
    Object? publishedAt = null,
    Object? isUrgent = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isUrgent: null == isUrgent
          ? _value.isUrgent
          : isUrgent // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntelligenceUpdateImplCopyWith<$Res>
    implements $IntelligenceUpdateCopyWith<$Res> {
  factory _$$IntelligenceUpdateImplCopyWith(_$IntelligenceUpdateImpl value,
          $Res Function(_$IntelligenceUpdateImpl) then) =
      __$$IntelligenceUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String headline,
      String source,
      String category,
      double confidence,
      DateTime publishedAt,
      bool isUrgent});
}

/// @nodoc
class __$$IntelligenceUpdateImplCopyWithImpl<$Res>
    extends _$IntelligenceUpdateCopyWithImpl<$Res, _$IntelligenceUpdateImpl>
    implements _$$IntelligenceUpdateImplCopyWith<$Res> {
  __$$IntelligenceUpdateImplCopyWithImpl(_$IntelligenceUpdateImpl _value,
      $Res Function(_$IntelligenceUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntelligenceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? headline = null,
    Object? source = null,
    Object? category = null,
    Object? confidence = null,
    Object? publishedAt = null,
    Object? isUrgent = null,
  }) {
    return _then(_$IntelligenceUpdateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      headline: null == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      confidence: null == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as double,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isUrgent: null == isUrgent
          ? _value.isUrgent
          : isUrgent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IntelligenceUpdateImpl implements _IntelligenceUpdate {
  const _$IntelligenceUpdateImpl(
      {required this.id,
      required this.headline,
      required this.source,
      required this.category,
      required this.confidence,
      required this.publishedAt,
      this.isUrgent = false});

  @override
  final String id;
  @override
  final String headline;
  @override
  final String source;
  @override
  final String category;
  @override
  final double confidence;
  @override
  final DateTime publishedAt;
  @override
  @JsonKey()
  final bool isUrgent;

  @override
  String toString() {
    return 'IntelligenceUpdate(id: $id, headline: $headline, source: $source, category: $category, confidence: $confidence, publishedAt: $publishedAt, isUrgent: $isUrgent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntelligenceUpdateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.isUrgent, isUrgent) ||
                other.isUrgent == isUrgent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, headline, source, category,
      confidence, publishedAt, isUrgent);

  /// Create a copy of IntelligenceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntelligenceUpdateImplCopyWith<_$IntelligenceUpdateImpl> get copyWith =>
      __$$IntelligenceUpdateImplCopyWithImpl<_$IntelligenceUpdateImpl>(
          this, _$identity);
}

abstract class _IntelligenceUpdate implements IntelligenceUpdate {
  const factory _IntelligenceUpdate(
      {required final String id,
      required final String headline,
      required final String source,
      required final String category,
      required final double confidence,
      required final DateTime publishedAt,
      final bool isUrgent}) = _$IntelligenceUpdateImpl;

  @override
  String get id;
  @override
  String get headline;
  @override
  String get source;
  @override
  String get category;
  @override
  double get confidence;
  @override
  DateTime get publishedAt;
  @override
  bool get isUrgent;

  /// Create a copy of IntelligenceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntelligenceUpdateImplCopyWith<_$IntelligenceUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuickAccessItem {
  String get id => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  IconData get icon => throw _privateConstructorUsedError;
  String get route => throw _privateConstructorUsedError;

  /// Create a copy of QuickAccessItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuickAccessItemCopyWith<QuickAccessItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuickAccessItemCopyWith<$Res> {
  factory $QuickAccessItemCopyWith(
          QuickAccessItem value, $Res Function(QuickAccessItem) then) =
      _$QuickAccessItemCopyWithImpl<$Res, QuickAccessItem>;
  @useResult
  $Res call({String id, String label, IconData icon, String route});
}

/// @nodoc
class _$QuickAccessItemCopyWithImpl<$Res, $Val extends QuickAccessItem>
    implements $QuickAccessItemCopyWith<$Res> {
  _$QuickAccessItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuickAccessItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? icon = null,
    Object? route = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuickAccessItemImplCopyWith<$Res>
    implements $QuickAccessItemCopyWith<$Res> {
  factory _$$QuickAccessItemImplCopyWith(_$QuickAccessItemImpl value,
          $Res Function(_$QuickAccessItemImpl) then) =
      __$$QuickAccessItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String label, IconData icon, String route});
}

/// @nodoc
class __$$QuickAccessItemImplCopyWithImpl<$Res>
    extends _$QuickAccessItemCopyWithImpl<$Res, _$QuickAccessItemImpl>
    implements _$$QuickAccessItemImplCopyWith<$Res> {
  __$$QuickAccessItemImplCopyWithImpl(
      _$QuickAccessItemImpl _value, $Res Function(_$QuickAccessItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuickAccessItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = null,
    Object? icon = null,
    Object? route = null,
  }) {
    return _then(_$QuickAccessItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuickAccessItemImpl implements _QuickAccessItem {
  const _$QuickAccessItemImpl(
      {required this.id,
      required this.label,
      required this.icon,
      required this.route});

  @override
  final String id;
  @override
  final String label;
  @override
  final IconData icon;
  @override
  final String route;

  @override
  String toString() {
    return 'QuickAccessItem(id: $id, label: $label, icon: $icon, route: $route)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuickAccessItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.route, route) || other.route == route));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, label, icon, route);

  /// Create a copy of QuickAccessItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuickAccessItemImplCopyWith<_$QuickAccessItemImpl> get copyWith =>
      __$$QuickAccessItemImplCopyWithImpl<_$QuickAccessItemImpl>(
          this, _$identity);
}

abstract class _QuickAccessItem implements QuickAccessItem {
  const factory _QuickAccessItem(
      {required final String id,
      required final String label,
      required final IconData icon,
      required final String route}) = _$QuickAccessItemImpl;

  @override
  String get id;
  @override
  String get label;
  @override
  IconData get icon;
  @override
  String get route;

  /// Create a copy of QuickAccessItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuickAccessItemImplCopyWith<_$QuickAccessItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashboardState {
  List<PriorityAction> get priorityActions =>
      throw _privateConstructorUsedError;
  List<UpcomingMeeting> get upcomingMeetings =>
      throw _privateConstructorUsedError;
  List<PendingTask> get pendingTasks => throw _privateConstructorUsedError;
  List<RecentDraft> get recentDrafts => throw _privateConstructorUsedError;
  List<IntelligenceUpdate> get intelligenceUpdates =>
      throw _privateConstructorUsedError;
  List<QuickAccessItem> get quickAccessItems =>
      throw _privateConstructorUsedError;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {List<PriorityAction> priorityActions,
      List<UpcomingMeeting> upcomingMeetings,
      List<PendingTask> pendingTasks,
      List<RecentDraft> recentDrafts,
      List<IntelligenceUpdate> intelligenceUpdates,
      List<QuickAccessItem> quickAccessItems});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priorityActions = null,
    Object? upcomingMeetings = null,
    Object? pendingTasks = null,
    Object? recentDrafts = null,
    Object? intelligenceUpdates = null,
    Object? quickAccessItems = null,
  }) {
    return _then(_value.copyWith(
      priorityActions: null == priorityActions
          ? _value.priorityActions
          : priorityActions // ignore: cast_nullable_to_non_nullable
              as List<PriorityAction>,
      upcomingMeetings: null == upcomingMeetings
          ? _value.upcomingMeetings
          : upcomingMeetings // ignore: cast_nullable_to_non_nullable
              as List<UpcomingMeeting>,
      pendingTasks: null == pendingTasks
          ? _value.pendingTasks
          : pendingTasks // ignore: cast_nullable_to_non_nullable
              as List<PendingTask>,
      recentDrafts: null == recentDrafts
          ? _value.recentDrafts
          : recentDrafts // ignore: cast_nullable_to_non_nullable
              as List<RecentDraft>,
      intelligenceUpdates: null == intelligenceUpdates
          ? _value.intelligenceUpdates
          : intelligenceUpdates // ignore: cast_nullable_to_non_nullable
              as List<IntelligenceUpdate>,
      quickAccessItems: null == quickAccessItems
          ? _value.quickAccessItems
          : quickAccessItems // ignore: cast_nullable_to_non_nullable
              as List<QuickAccessItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardStateImplCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$DashboardStateImplCopyWith(_$DashboardStateImpl value,
          $Res Function(_$DashboardStateImpl) then) =
      __$$DashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PriorityAction> priorityActions,
      List<UpcomingMeeting> upcomingMeetings,
      List<PendingTask> pendingTasks,
      List<RecentDraft> recentDrafts,
      List<IntelligenceUpdate> intelligenceUpdates,
      List<QuickAccessItem> quickAccessItems});
}

/// @nodoc
class __$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateImpl>
    implements _$$DashboardStateImplCopyWith<$Res> {
  __$$DashboardStateImplCopyWithImpl(
      _$DashboardStateImpl _value, $Res Function(_$DashboardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priorityActions = null,
    Object? upcomingMeetings = null,
    Object? pendingTasks = null,
    Object? recentDrafts = null,
    Object? intelligenceUpdates = null,
    Object? quickAccessItems = null,
  }) {
    return _then(_$DashboardStateImpl(
      priorityActions: null == priorityActions
          ? _value._priorityActions
          : priorityActions // ignore: cast_nullable_to_non_nullable
              as List<PriorityAction>,
      upcomingMeetings: null == upcomingMeetings
          ? _value._upcomingMeetings
          : upcomingMeetings // ignore: cast_nullable_to_non_nullable
              as List<UpcomingMeeting>,
      pendingTasks: null == pendingTasks
          ? _value._pendingTasks
          : pendingTasks // ignore: cast_nullable_to_non_nullable
              as List<PendingTask>,
      recentDrafts: null == recentDrafts
          ? _value._recentDrafts
          : recentDrafts // ignore: cast_nullable_to_non_nullable
              as List<RecentDraft>,
      intelligenceUpdates: null == intelligenceUpdates
          ? _value._intelligenceUpdates
          : intelligenceUpdates // ignore: cast_nullable_to_non_nullable
              as List<IntelligenceUpdate>,
      quickAccessItems: null == quickAccessItems
          ? _value._quickAccessItems
          : quickAccessItems // ignore: cast_nullable_to_non_nullable
              as List<QuickAccessItem>,
    ));
  }
}

/// @nodoc

class _$DashboardStateImpl implements _DashboardState {
  const _$DashboardStateImpl(
      {required final List<PriorityAction> priorityActions,
      required final List<UpcomingMeeting> upcomingMeetings,
      required final List<PendingTask> pendingTasks,
      required final List<RecentDraft> recentDrafts,
      required final List<IntelligenceUpdate> intelligenceUpdates,
      required final List<QuickAccessItem> quickAccessItems})
      : _priorityActions = priorityActions,
        _upcomingMeetings = upcomingMeetings,
        _pendingTasks = pendingTasks,
        _recentDrafts = recentDrafts,
        _intelligenceUpdates = intelligenceUpdates,
        _quickAccessItems = quickAccessItems;

  final List<PriorityAction> _priorityActions;
  @override
  List<PriorityAction> get priorityActions {
    if (_priorityActions is EqualUnmodifiableListView) return _priorityActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_priorityActions);
  }

  final List<UpcomingMeeting> _upcomingMeetings;
  @override
  List<UpcomingMeeting> get upcomingMeetings {
    if (_upcomingMeetings is EqualUnmodifiableListView)
      return _upcomingMeetings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingMeetings);
  }

  final List<PendingTask> _pendingTasks;
  @override
  List<PendingTask> get pendingTasks {
    if (_pendingTasks is EqualUnmodifiableListView) return _pendingTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendingTasks);
  }

  final List<RecentDraft> _recentDrafts;
  @override
  List<RecentDraft> get recentDrafts {
    if (_recentDrafts is EqualUnmodifiableListView) return _recentDrafts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentDrafts);
  }

  final List<IntelligenceUpdate> _intelligenceUpdates;
  @override
  List<IntelligenceUpdate> get intelligenceUpdates {
    if (_intelligenceUpdates is EqualUnmodifiableListView)
      return _intelligenceUpdates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_intelligenceUpdates);
  }

  final List<QuickAccessItem> _quickAccessItems;
  @override
  List<QuickAccessItem> get quickAccessItems {
    if (_quickAccessItems is EqualUnmodifiableListView)
      return _quickAccessItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quickAccessItems);
  }

  @override
  String toString() {
    return 'DashboardState(priorityActions: $priorityActions, upcomingMeetings: $upcomingMeetings, pendingTasks: $pendingTasks, recentDrafts: $recentDrafts, intelligenceUpdates: $intelligenceUpdates, quickAccessItems: $quickAccessItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStateImpl &&
            const DeepCollectionEquality()
                .equals(other._priorityActions, _priorityActions) &&
            const DeepCollectionEquality()
                .equals(other._upcomingMeetings, _upcomingMeetings) &&
            const DeepCollectionEquality()
                .equals(other._pendingTasks, _pendingTasks) &&
            const DeepCollectionEquality()
                .equals(other._recentDrafts, _recentDrafts) &&
            const DeepCollectionEquality()
                .equals(other._intelligenceUpdates, _intelligenceUpdates) &&
            const DeepCollectionEquality()
                .equals(other._quickAccessItems, _quickAccessItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_priorityActions),
      const DeepCollectionEquality().hash(_upcomingMeetings),
      const DeepCollectionEquality().hash(_pendingTasks),
      const DeepCollectionEquality().hash(_recentDrafts),
      const DeepCollectionEquality().hash(_intelligenceUpdates),
      const DeepCollectionEquality().hash(_quickAccessItems));

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      __$$DashboardStateImplCopyWithImpl<_$DashboardStateImpl>(
          this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
          {required final List<PriorityAction> priorityActions,
          required final List<UpcomingMeeting> upcomingMeetings,
          required final List<PendingTask> pendingTasks,
          required final List<RecentDraft> recentDrafts,
          required final List<IntelligenceUpdate> intelligenceUpdates,
          required final List<QuickAccessItem> quickAccessItems}) =
      _$DashboardStateImpl;

  @override
  List<PriorityAction> get priorityActions;
  @override
  List<UpcomingMeeting> get upcomingMeetings;
  @override
  List<PendingTask> get pendingTasks;
  @override
  List<RecentDraft> get recentDrafts;
  @override
  List<IntelligenceUpdate> get intelligenceUpdates;
  @override
  List<QuickAccessItem> get quickAccessItems;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardStateImplCopyWith<_$DashboardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
