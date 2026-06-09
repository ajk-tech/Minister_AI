import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minister_ai/main.dart';

void main() {
  testWidgets('App launches without errors', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: MinisterAiApp()));
    await tester.pumpAndSettle();
    expect(find.byType(MinisterAiApp), findsOneWidget);
  });
}
