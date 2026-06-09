import 'package:flutter/material.dart';
import '../domain/dashboard_repository.dart';
import '../domain/models/dashboard_models.dart';

class MockDashboardRepository implements DashboardRepository {
  @override
  Future<DashboardState> getDashboardState() async {
    await Future.delayed(const Duration(milliseconds: 600));
    return DashboardState(
      priorityActions: _priorityActions,
      upcomingMeetings: _meetings,
      pendingTasks: _tasks,
      recentDrafts: _drafts,
      intelligenceUpdates: _intelligence,
      quickAccessItems: _quickAccess,
    );
  }

  static final _now = DateTime.now();

  static final _priorityActions = [
    PriorityAction(id: '1', title: 'Approve National Highway Expansion Budget', department: 'Ministry of Road Transport', urgency: UrgencyLevel.high, dueAt: _now.add(const Duration(hours: 2))),
    PriorityAction(id: '2', title: 'Review Inter-State Water Dispute Resolution Draft', department: 'Ministry of Jal Shakti', urgency: UrgencyLevel.high, dueAt: _now.add(const Duration(hours: 4))),
    PriorityAction(id: '3', title: 'Sign MoU with ISRO for Satellite Connectivity Program', department: 'Department of Space', urgency: UrgencyLevel.medium, dueAt: _now.add(const Duration(days: 1))),
    PriorityAction(id: '4', title: 'Review Parliamentary Question Responses — Session 47', department: 'Lok Sabha Secretariat', urgency: UrgencyLevel.medium, dueAt: _now.add(const Duration(days: 1))),
    PriorityAction(id: '5', title: 'Clearance Required: PM Relief Fund Disbursement', department: 'PMO', urgency: UrgencyLevel.high, dueAt: _now.add(const Duration(hours: 1))),
    PriorityAction(id: '6', title: 'Respond to Cabinet Note on Digital India Phase III', department: 'MeitY', urgency: UrgencyLevel.low, dueAt: _now.add(const Duration(days: 3))),
  ];

  static final _meetings = [
    UpcomingMeeting(id: '1', title: 'Cabinet Committee on Economic Affairs', time: _now.add(const Duration(hours: 1, minutes: 30)), durationMinutes: 90, participantCount: 14, location: 'Cabinet Room, South Block', type: MeetingType.cabinet),
    UpcomingMeeting(id: '2', title: 'Bilateral with Minister of Finance — Singapore Delegation', time: _now.add(const Duration(hours: 3)), durationMinutes: 45, participantCount: 8, location: 'Conference Room A, North Block', type: MeetingType.bilateral),
    UpcomingMeeting(id: '3', title: 'Department Review: Smart Cities Mission Progress', time: _now.add(const Duration(hours: 5)), durationMinutes: 60, participantCount: 22, location: 'NIC Video Conference Hall', type: MeetingType.departmental),
    UpcomingMeeting(id: '4', title: 'Press Briefing on Urban Development Policy', time: _now.add(const Duration(hours: 7)), durationMinutes: 30, participantCount: 40, location: 'National Media Centre', type: MeetingType.public),
    UpcomingMeeting(id: '5', title: 'Inter-Ministerial Coordination on Flood Relief', time: _now.add(const Duration(days: 1, hours: 2)), durationMinutes: 75, participantCount: 18, location: 'NDMA Headquarters', type: MeetingType.cabinet),
  ];

  static final _tasks = [
    PendingTask(id: '1', title: 'Review NITI Aayog Report on Agricultural Reforms', assignedTo: 'Joint Secretary Sharma', dueDate: _now.add(const Duration(hours: 3)), status: TaskStatus.inProgress, priority: UrgencyLevel.high),
    PendingTask(id: '2', title: 'Approve Draft Speech for Independence Day Function', assignedTo: 'OSD Kumar', dueDate: _now.add(const Duration(days: 2)), status: TaskStatus.pending, priority: UrgencyLevel.high),
    PendingTask(id: '3', title: 'File ATR for CAG Observations on Housing Scheme', assignedTo: 'Dir. Finance Mehta', dueDate: _now.add(const Duration(days: 3)), status: TaskStatus.pending, priority: UrgencyLevel.medium),
    PendingTask(id: '4', title: 'Respond to Chief Minister — Karnataka: Urban Water Supply', assignedTo: 'PS to Minister', dueDate: _now.add(const Duration(days: 1)), status: TaskStatus.inProgress, priority: UrgencyLevel.medium),
    PendingTask(id: '5', title: 'Review EFC Note for PM Gram Sadak Yojana Phase IV', assignedTo: 'Under Secretary Iyer', dueDate: _now.add(const Duration(days: 5)), status: TaskStatus.pending, priority: UrgencyLevel.low),
  ];

  static final _drafts = [
    RecentDraft(id: '1', title: 'Address to the Parliament: Smart Cities Progress Report', type: 'Speech', lastEditedAt: _now.subtract(const Duration(hours: 1)), wordCount: 1240, status: DraftStatus.review),
    RecentDraft(id: '2', title: 'Briefing Note: G20 Infrastructure Financing Outcomes', type: 'Briefing Note', lastEditedAt: _now.subtract(const Duration(hours: 3)), wordCount: 890, status: DraftStatus.draft),
    RecentDraft(id: '3', title: 'Official Letter to Chief Ministers: Model Land Tenancy Act', type: 'Official Letter', lastEditedAt: _now.subtract(const Duration(days: 1)), wordCount: 650, status: DraftStatus.approved),
    RecentDraft(id: '4', title: 'Memorandum on Inter-Agency Coordination Protocol', type: 'Memorandum', lastEditedAt: _now.subtract(const Duration(days: 2)), wordCount: 1800, status: DraftStatus.draft),
  ];

  static final _intelligence = [
    IntelligenceUpdate(id: '1', headline: 'Monsoon Deficit in Maharashtra May Impact Kharif Sowing Targets', source: 'IMD Report', category: 'Agriculture', confidence: 0.87, publishedAt: _now.subtract(const Duration(minutes: 45)), isUrgent: true),
    IntelligenceUpdate(id: '2', headline: 'Opposition Party Consolidation Ahead of Assembly Session', source: 'Internal Brief', category: 'Parliamentary', confidence: 0.72, publishedAt: _now.subtract(const Duration(hours: 2))),
    IntelligenceUpdate(id: '3', headline: 'FDI Inflows Q2 Record 18% Growth; Services Sector Leads', source: 'RBI Bulletin', category: 'Economy', confidence: 0.95, publishedAt: _now.subtract(const Duration(hours: 3))),
    IntelligenceUpdate(id: '4', headline: 'Border Infrastructure Upgrade: 3 Strategic Roads Operational', source: 'MoD Brief', category: 'Defence', confidence: 0.91, publishedAt: _now.subtract(const Duration(hours: 4))),
    IntelligenceUpdate(id: '5', headline: 'State Governments Slow on JAM Trinity Implementation', source: 'DBT Mission Report', category: 'Governance', confidence: 0.83, publishedAt: _now.subtract(const Duration(hours: 6))),
    IntelligenceUpdate(id: '6', headline: 'Rising Crude Prices May Pressure Petroleum Subsidy Budget', source: 'PPAC Analysis', category: 'Economy', confidence: 0.78, publishedAt: _now.subtract(const Duration(hours: 8)), isUrgent: true),
  ];

  static final _quickAccess = [
    const QuickAccessItem(id: '1', label: 'Intelligence\nAssistant', icon: Icons.psychology_outlined, route: '/assistant'),
    const QuickAccessItem(id: '2', label: 'Draft\nDocument', icon: Icons.edit_document, route: '/drafting'),
    const QuickAccessItem(id: '3', label: 'Knowledge\nSearch', icon: Icons.search, route: '/knowledge'),
    const QuickAccessItem(id: '4', label: 'Communications', icon: Icons.mail_outline, route: '/communications'),
    const QuickAccessItem(id: '5', label: 'Calendar &\nMeetings', icon: Icons.calendar_today_outlined, route: '/calendar'),
    const QuickAccessItem(id: '6', label: 'Notifications', icon: Icons.notifications_outlined, route: '/notifications'),
  ];
}
