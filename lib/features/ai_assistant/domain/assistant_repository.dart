import 'models/assistant_models.dart';

abstract class AssistantRepository {
  Future<List<AssistantSession>> getSessions();
}
