import 'models/dashboard_models.dart';

abstract class DashboardRepository {
  Future<DashboardState> getDashboardState();
}
