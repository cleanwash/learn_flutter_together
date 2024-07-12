import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_together/02_widget_rule_2/presentation/component/big_button.dart';
import 'package:learn_flutter_together/02_widget_rule_2/presentation/ui/color_styles.dart';

void main() {
  testWidgets('BigButton Test', (tester) async {
    // Define the test label text
    const String testLabel = 'Press me';

    // Build the BigButton widget
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: BigButton(label: testLabel),
          ),
        ),
      ),
    );

    expect(find.text(testLabel), findsOneWidget);
    expect(find.byIcon(Icons.arrow_forward), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    final button = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
    expect(button.style?.backgroundColor?.resolve({}), ColorStyles.primary100);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    final buttonAfterSecondPress = tester.widget<ElevatedButton>(find.byType(ElevatedButton));
    expect(buttonAfterSecondPress.style?.backgroundColor?.resolve({}), ColorStyles.secondary100);
  });
}
