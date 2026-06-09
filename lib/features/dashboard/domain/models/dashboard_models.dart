import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'dashboard_models.freezed.dart';

enum UrgencyLevel { high, medium, low }
enum MeetingType { cabinet, bilateral, departmental, public }
enum TaskStatus { pending, inProgress, completed }
enum DraftStatus { draft, review, approved }

@freezed
class PriorityAction with _$PriorityAction {
  const factory PriorityAction({
    required String id,
    required String title,
    required String department,
    required UrgencyLevel urgency,
    required DateTime dueAt,
    @Default(false) bool isRead,
  }) = _PriorityAction;
}

@freezed
class UpcomingMeeting with _$UpcomingMeeting {
  const factory UpcomingMeeting({
    required String id,
    required String title,
    required DateTime time,
    required int durationMinutes,
    required int participantCount,
    required String location,
    required MeetingType type,
  }) = _UpcomingMeeting;
}

@freezed
class PendingTask with _$PendingTask {
  const factory PendingTask({
    required String id,
    required String title,
    required String assignedTo,
    required DateTime dueDate,
    required TaskStatus status,
    required UrgencyLevel priority,
  }) = _PendingTask;
}

@freezed
class RecentDraft with _$RecentDraft {
  const factory RecentDraft({
    required String id,
    required String title,
    required String type,
    required DateTime lastEditedAt,
    required int wordCount,
    required DraftStatus status,
  }) = _RecentDraft;
}

@freezed
class IntelligenceUpdate with _$IntelligenceUpdate {
  const factory IntelligenceUpdate({
    required String id,
    required String headline,
    required String source,
    required String category,
    required double confidence,
    required DateTime publishedAt,
    @Default(false) bool isUrgent,
  }) = _IntelligenceUpdate;
}

@freezed
class QuickAccessItem with _$QuickAccessItem {
  const factory QuickAccessItem({
    required String id,
    required String label,
    required IconData icon,
    required String route,
  }) = _QuickAccessItem;
}

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required List<PriorityAction> priorityActions,
    required List<UpcomingMeeting> upcomingMeetings,
    required List<PendingTask> pendingTasks,
    required List<RecentDraft> recentDrafts,
    required List<IntelligenceUpdate> intelligenceUpdates,
    required List<QuickAccessItem> quickAccessItems,
  }) = _DashboardState;
}
