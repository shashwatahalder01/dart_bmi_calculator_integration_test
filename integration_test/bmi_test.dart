// import for locator
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
//import flutter_test for group
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter_test/flutter_test.dart';
// import integration test for testing
import 'package:integration_test/integration_test.dart';
//import app
import 'package:bmi_calculator/main.dart' as app;
//sleep
import 'dart:io';


void main() {
  group('bmi test', () {
    //initiliaze flutterwebdriver
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets('full process test', (tester) async{
      app.main();
      await tester.pumpAndSettle();
      final male = find.byKey(Key('male'));
      final female = find.byKey(Key('female'));
      // final male = find.byKey(Key('plusminus'));
      // final height =
      final weight_minus = find.byKey(Key('plusminus'));
      final weight_plus = find.byKey(Key('plusminus'));
      final calculate = find.text('CALCULATE');

      print("Click male");
      await tester.tap(male);
      await tester.pumpAndSettle();
      sleep(Duration(seconds:4));

      print("Click female");
      await tester.tap(female);
      await tester.pumpAndSettle();
      await tester.tap(weight_minus);
      await tester.pumpAndSettle();
      await tester.tap(calculate);
      sleep(Duration(seconds:4));

      // final age =
      // final calculate  =

      // final emailField = find.byType(TextField).first;
      // final passwordField = find.byKey(Key('Password'));
      // final signInButton = find.text('Sign in');
      //
      // await tester.enterText(passwordField, "Test@1234");
      // await tester.tap(signInButton);
      // print("Started verifying the message for successful login.");
      // await tester.ensureVisible(signInMessage);
      //

    });
  });
}
