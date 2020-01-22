import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:snowmanlabs/app/pages/login/login_controller.dart';
import 'package:snowmanlabs/app/pages/login/login_module.dart';

void main() {
  initModule(LoginModule());

  LoginController login;

  setUp(() {
    login = LoginModule.to.bloc<LoginController>();
  });

  group('LoginController Test', () {
    test("First Test", () {
      expect(login, isInstanceOf<LoginController>());
    });

    test("Start loading", () {
      expect(login.loading, equals(false));
      login.startLoading();
      expect(login.loading, equals(true));
    });

    test("Stop loading", () {
      expect(login.loading, equals(true));
      login.stopLoading();
      expect(login.loading, equals(false));
    });
  });
}
