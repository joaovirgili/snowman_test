// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_bar_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchBarController on _SearchBarBase, Store {
  final _$recentsAtom = Atom(name: '_SearchBarBase.recents');

  @override
  ObservableList<PlaceItemModel> get recents {
    _$recentsAtom.context.enforceReadPolicy(_$recentsAtom);
    _$recentsAtom.reportObserved();
    return super.recents;
  }

  @override
  set recents(ObservableList<PlaceItemModel> value) {
    _$recentsAtom.context.conditionallyRunInAction(() {
      super.recents = value;
      _$recentsAtom.reportChanged();
    }, _$recentsAtom, name: '${_$recentsAtom.name}_set');
  }

  final _$favoritsAtom = Atom(name: '_SearchBarBase.favorits');

  @override
  ObservableList<PlaceItemModel> get favorits {
    _$favoritsAtom.context.enforceReadPolicy(_$favoritsAtom);
    _$favoritsAtom.reportObserved();
    return super.favorits;
  }

  @override
  set favorits(ObservableList<PlaceItemModel> value) {
    _$favoritsAtom.context.conditionallyRunInAction(() {
      super.favorits = value;
      _$favoritsAtom.reportChanged();
    }, _$favoritsAtom, name: '${_$favoritsAtom.name}_set');
  }

  final _$_SearchBarBaseActionController =
      ActionController(name: '_SearchBarBase');

  @override
  void addRecent() {
    final _$actionInfo = _$_SearchBarBaseActionController.startAction();
    try {
      return super.addRecent();
    } finally {
      _$_SearchBarBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeRecent() {
    final _$actionInfo = _$_SearchBarBaseActionController.startAction();
    try {
      return super.removeRecent();
    } finally {
      _$_SearchBarBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addFavorit() {
    final _$actionInfo = _$_SearchBarBaseActionController.startAction();
    try {
      return super.addFavorit();
    } finally {
      _$_SearchBarBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeFavorit() {
    final _$actionInfo = _$_SearchBarBaseActionController.startAction();
    try {
      return super.removeFavorit();
    } finally {
      _$_SearchBarBaseActionController.endAction(_$actionInfo);
    }
  }
}
