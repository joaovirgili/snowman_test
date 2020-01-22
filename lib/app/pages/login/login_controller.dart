import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  @observable
  bool loading = false;

  @action
  void startLoading() => loading = true;

  @action
  void stopLoading() => loading = false;
}
