import 'package:flutter_test/flutter_test.dart';
import 'package:carwash/wash_app.dart';

void main() {
  testWidgets('WashApp smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const WashApp());
    expect(find.byType(WashApp), findsOneWidget);
  });
}
