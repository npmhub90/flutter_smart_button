import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_smart_button/flutter_smart_button.dart';

void main() {
  testWidgets('SmartButton loading state test', (WidgetTester tester) async {
    bool isLoading = false;
    Future<void> simulateAsyncOperation() async {
      isLoading = true;
      await Future.delayed(Duration(seconds: 1));
      isLoading = false;
    }

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: SmartButton(
          child: Text('Tap Me'),
          onPressed: simulateAsyncOperation,
          isLoading: isLoading,
        ),
      ),
    ));

    await tester.tap(find.byType(SmartButton));
    await tester.pump();

    expect(isLoading, isTrue);

    await tester.pump(Duration(seconds: 1));
    expect(isLoading, isFalse);
  });
}
