// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Controller on ControllerBase, Store {
  final _$numberCharactersAtom = Atom(name: 'ControllerBase.numberCharacters');

  @override
  int get numberCharacters {
    _$numberCharactersAtom.context.enforceReadPolicy(_$numberCharactersAtom);
    _$numberCharactersAtom.reportObserved();
    return super.numberCharacters;
  }

  @override
  set numberCharacters(int value) {
    _$numberCharactersAtom.context.conditionallyRunInAction(() {
      super.numberCharacters = value;
      _$numberCharactersAtom.reportChanged();
    }, _$numberCharactersAtom, name: '${_$numberCharactersAtom.name}_set');
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  dynamic updateNumberCharacters(String text) {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.updateNumberCharacters(text);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
