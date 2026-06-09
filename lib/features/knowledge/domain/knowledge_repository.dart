import 'models/knowledge_models.dart';

abstract class KnowledgeRepository {
  Future<List<KnowledgeDocument>> search(String query, SearchFilters filters);
}
