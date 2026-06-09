import 'models/drafting_models.dart';

abstract class DraftingRepository {
  Future<List<DraftDocument>> getDocuments();
}
