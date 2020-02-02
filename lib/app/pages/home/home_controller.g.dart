// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$isRegisterSpotOpenedAtom =
      Atom(name: '_HomeBase.isRegisterSpotOpened');

  @override
  bool get isRegisterSpotOpened {
    _$isRegisterSpotOpenedAtom.context
        .enforceReadPolicy(_$isRegisterSpotOpenedAtom);
    _$isRegisterSpotOpenedAtom.reportObserved();
    return super.isRegisterSpotOpened;
  }

  @override
  set isRegisterSpotOpened(bool value) {
    _$isRegisterSpotOpenedAtom.context.conditionallyRunInAction(() {
      super.isRegisterSpotOpened = value;
      _$isRegisterSpotOpenedAtom.reportChanged();
    }, _$isRegisterSpotOpenedAtom,
        name: '${_$isRegisterSpotOpenedAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void toggleRegisterSpot() {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.toggleRegisterSpot();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }
}
