import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  @observable
  bool isRegisterSpotOpened = false;

  @action
  void toggleRegisterSpot() => isRegisterSpotOpened = !isRegisterSpotOpened;
}
