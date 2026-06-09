import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/models/dashboard_models.dart';
import '../../../../core/di/providers.dart';

part 'dashboard_provider.g.dart';

@riverpod
Future<DashboardState> dashboardData(Ref ref) async {
  final repo = ref.read(dashboardRepositoryProvider);
  return repo.getDashboardState();
}
