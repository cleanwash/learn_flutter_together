import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learn_flutter_together/01_widget_rule/data/model/popUpDialog.dart';
import 'package:learn_flutter_together/01_widget_rule/presentation/component/popup_dialog_card.dart';

void main() {
  testWidgets('팝업 위젯 테스트', (WidgetTester tester) async {
    final popupdialog = Popupdialog(url: 'app.Recipe.co/jollof_rice');

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PopupDialogCard(popupdialog: popupdialog),
        ),
      ),
    );
    expect(find.text('Recipe Link'), findsOneWidget);
    expect(find.byIcon(Icons.close), findsOneWidget);
  });
}
