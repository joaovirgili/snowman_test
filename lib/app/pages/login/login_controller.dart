import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  @observable
  bool loading = false;

  @observable
  bool isAnimating = false;

  @observable
  bool isLoggedIn = false;

  @computed
  bool get showLoginWidgets => isAnimating == false && loading == false;

  @action
  void startLoading() {
    loading = true;
    startAnimation();
  }

  @action
  void stopLoading() {
    loading = false;
    startAnimation();
  }

  @action
  void startAnimation() => isAnimating = true;

  @action
  void stopAnimation() => isAnimating = false;

  @action
  void setLoggedIn() => isLoggedIn = true;

}
