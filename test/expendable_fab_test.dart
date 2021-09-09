import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:expendable_fab/expendable_fab.dart';

void main() {
  testWidgets('Should show it\'s options while opened',
      (WidgetTester tester) async {
    final widgetUnderTest = MaterialApp(
      home: Scaffold(
        floatingActionButton: ExpendableFab(
          distance: 2,
          children: [
            ActionButton(
              onPressed: () => {},
              icon: const Icon(Icons.account_balance),
            )
          ],
        ),
      ),
    );
    await tester.pumpWidget(widgetUnderTest);

    expect(find.byIcon(Icons.account_balance), findsOneWidget);

    await tester.tap(find.byType(RawMaterialButton));
    await tester.pump();

    expect(find.byIcon(Icons.account_balance), findsOneWidget);
  });
}
