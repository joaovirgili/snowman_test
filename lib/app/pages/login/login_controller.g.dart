// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginBase, Store {
  Computed<bool> _$showLoginWidgetsComputed;

  @override
  bool get showLoginWidgets => (_$showLoginWidgetsComputed ??=
          Computed<bool>(() => super.showLoginWidgets))
      .value;

  final _$loadingAtom = Atom(name: '_LoginBase.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$isAnimatingAtom = Atom(name: '_LoginBase.isAnimating');

  @override
  bool get isAnimating {
    _$isAnimatingAtom.context.enforceReadPolicy(_$isAnimatingAtom);
    _$isAnimatingAtom.reportObserved();
    return super.isAnimating;
  }

  @override
  set isAnimating(bool value) {
    _$isAnimatingAtom.context.conditionallyRunInAction(() {
      super.isAnimating = value;
      _$isAnimatingAtom.reportChanged();
    }, _$isAnimatingAtom, name: '${_$isAnimatingAtom.name}_set');
  }

  final _$_LoginBaseActionController = ActionController(name: '_LoginBase');

  @override
  void startLoading() {
    final _$actionInfo = _$_LoginBaseActionController.startAction();
    try {
      return super.startLoading();
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stopLoading() {
    final _$actionInfo = _$_LoginBaseActionController.startAction();
    try {
      return super.stopLoading();
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void startAnimation() {
    final _$actionInfo = _$_LoginBaseActionController.startAction();
    try {
      return super.startAnimation();
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stopAnimation() {
    final _$actionInfo = _$_LoginBaseActionController.startAction();
    try {
      return super.stopAnimation();
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }
}
