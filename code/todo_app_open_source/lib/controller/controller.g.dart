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

  final _$myTasksAtom = Atom(name: 'ControllerBase.myTasks');

  @override
  List<String> get myTasks {
    _$myTasksAtom.context.enforceReadPolicy(_$myTasksAtom);
    _$myTasksAtom.reportObserved();
    return super.myTasks;
  }

  @override
  set myTasks(List<String> value) {
    _$myTasksAtom.context.conditionallyRunInAction(() {
      super.myTasks = value;
      _$myTasksAtom.reportChanged();
    }, _$myTasksAtom, name: '${_$myTasksAtom.name}_set');
  }

  final _$taskAtom = Atom(name: 'ControllerBase.task');

  @override
  String get task {
    _$taskAtom.context.enforceReadPolicy(_$taskAtom);
    _$taskAtom.reportObserved();
    return super.task;
  }

  @override
  set task(String value) {
    _$taskAtom.context.conditionallyRunInAction(() {
      super.task = value;
      _$taskAtom.reportChanged();
    }, _$taskAtom, name: '${_$taskAtom.name}_set');
  }

  final _$screenLoadAtom = Atom(name: 'ControllerBase.screenLoad');

  @override
  bool get screenLoad {
    _$screenLoadAtom.context.enforceReadPolicy(_$screenLoadAtom);
    _$screenLoadAtom.reportObserved();
    return super.screenLoad;
  }

  @override
  set screenLoad(bool value) {
    _$screenLoadAtom.context.conditionallyRunInAction(() {
      super.screenLoad = value;
      _$screenLoadAtom.reportChanged();
    }, _$screenLoadAtom, name: '${_$screenLoadAtom.name}_set');
  }

  final _$storeTaskAsyncAction = AsyncAction('storeTask');

  @override
  Future storeTask() {
    return _$storeTaskAsyncAction.run(() => super.storeTask());
  }

  final _$searchTaskAsyncAction = AsyncAction('searchTask');

  @override
  Future<bool> searchTask() {
    return _$searchTaskAsyncAction.run(() => super.searchTask());
  }

  final _$deleteTaskAsyncAction = AsyncAction('deleteTask');

  @override
  Future deleteTask(String value) {
    return _$deleteTaskAsyncAction.run(() => super.deleteTask(value));
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

  @override
  dynamic initNumberCharacters() {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.initNumberCharacters();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeTextTask(String newTask) {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.changeTextTask(newTask);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateScreenLoad(bool state) {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.updateScreenLoad(state);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateListMyTasks(List<String> tasks) {
    final _$actionInfo = _$ControllerBaseActionController.startAction();
    try {
      return super.updateListMyTasks(tasks);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
