import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:snowmanlabs/app/app_controller.dart';
import 'package:snowmanlabs/app/app_module.dart';

void main() {
  initModule(AppModule());

  AppController app;

  setUp(() {
    app = AppModule.to.bloc<AppController>();
  });

  group('AppController Test', () {
    test("First Test", () {
      expect(app, isInstanceOf<AppController>());
    });

  });
}
