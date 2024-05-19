import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:lab5/main.dart' as app;

void main() {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets('full app test', (tester) async{
      app.main();
      await tester.pumpAndSettle();
      
      final phoneNum = find.byKey(Key("phoneNumber"));
      final agree = find.byType(Checkbox);
      final activate = find.byKey(Key("activateButton"));
      final otp = find.byKey(Key("otp"));
      final activateButton = find.byType(TextButton);
      final person = find.byIcon(Icons.person);
      final factory2 = find.byKey(Key("Factory2"));
      final plus = find.byType(TextButton);
      final owner = find.byKey(Key("ownerName"));
      final phoneNo = find.byKey(Key("phoneNo"));
      final submit = find.byKey(Key("submit"));
      final setting = find.byIcon(Icons.settings);
      final edit = find.byIcon(Icons.edit);
      final steamPressure = find.byKey(Key("steamPressure"));
      final buttonSetting = find.byKey(Key("settingBt"));


      await tester.enterText(phoneNum, "01234567891");
      await tester.tap(agree);
      await tester.pumpAndSettle();
      await Future.delayed(Duration(seconds: 2));
      await tester.tap(activate);
      await tester.pumpAndSettle();
      await Future.delayed(Duration(seconds: 2));

      await tester.enterText(otp,"215248");
      await tester.tap(activateButton);
      await tester.pumpAndSettle();
      await Future.delayed(Duration(seconds: 2));

      await tester.tap(person);
      await tester.pumpAndSettle();
      await Future.delayed(Duration(seconds: 2));

      Navigator.of(tester.element(find.byType(Scaffold))).pop();
      await tester.pumpAndSettle();
      await Future.delayed(Duration(seconds: 2));

      await tester.tap(factory2);
      await tester.pumpAndSettle();
      await Future.delayed(Duration(seconds: 2));

      await tester.tap(person);
      await tester.pumpAndSettle();
      await Future.delayed(Duration(seconds: 2));
      await tester.tap(plus);
      await tester.pumpAndSettle();
      await Future.delayed(Duration(seconds: 5));

      await tester.enterText(owner, "4896Ham");
      await Future.delayed(Duration(seconds: 3));
      await tester.enterText(phoneNo, "01233252144");
      await Future.delayed(Duration(seconds: 3));
      await tester.tap(submit);
      await tester.pumpAndSettle();
      await Future.delayed(Duration(seconds: 5));

      await tester.tap(buttonSetting);
      await Future.delayed(Duration(seconds: 3));
      await tester.tap(edit);
      await Future.delayed(Duration(seconds: 4));
      await tester.enterText(steamPressure, "80");
      await Future.delayed(Duration(seconds: 5));
      await tester.tap(edit);
      await Future.delayed(Duration(seconds: 5));









    });
  });
}