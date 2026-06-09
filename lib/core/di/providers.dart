import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/dashboard/domain/dashboard_repository.dart';
import '../../features/dashboard/data/mock_dashboard_repository.dart';
import '../../features/ai_assistant/domain/assistant_repository.dart';
import '../../features/ai_assistant/data/mock_assistant_repository.dart';
import '../../features/drafting/domain/drafting_repository.dart';
import '../../features/drafting/data/mock_drafting_repository.dart';
import '../../features/knowledge/domain/knowledge_repository.dart';
import '../../features/knowledge/data/mock_knowledge_repository.dart';

final dashboardRepositoryProvider = Provider<DashboardRepository>(
  (_) => MockDashboardRepository(),
);

final assistantRepositoryProvider = Provider<AssistantRepository>(
  (_) => MockAssistantRepository(),
);

final draftingRepositoryProvider = Provider<DraftingRepository>(
  (_) => MockDraftingRepository(),
);

final knowledgeRepositoryProvider = Provider<KnowledgeRepository>(
  (_) => MockKnowledgeRepository(),
);
