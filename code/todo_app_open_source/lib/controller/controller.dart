import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  int numberCharacters = 0;

  @observable
  List<String> myTasks;

  @observable
  String task = "";

  @observable
  bool screenLoad = false;

  @observable
  bool clearMode = true;

  @observable
  dynamic primaryColorApp = Colors.white;

  @observable
  dynamic secondColorApp = Colors.blue;

  @observable
  dynamic textColor = Colors.black;

  @observable
  String animation = "minion";

  @action
  updateThemeApp(bool value) {
    clearMode = value;

    if (clearMode) {
      primaryColorApp = Colors.white;
      secondColorApp = Colors.blue;
      textColor = Colors.black;
      animation = "minion";
    } else {
      primaryColorApp = Colors.black;
      secondColorApp = Colors.white;
      textColor = Colors.white;
      animation = "intro";
    }
  }

  @action
  updateNumberCharacters(String text) {
    numberCharacters = text.length;
    changeTextTask(text);
  }

  @action
  initNumberCharacters() {
    numberCharacters = 0;
  }

  @action
  changeTextTask(String newTask) {
    task = newTask;
  }

  @action
  storeTask() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    myTasks = await prefs.getStringList("myTasks") ?? [];
    myTasks = List.from(myTasks..add(task));
    task = "";
    prefs.setStringList("myTasks", myTasks);
  }

  @action
  Future<bool> searchTask() async {
    updateScreenLoad(true);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    myTasks = await prefs.getStringList("myTasks") ?? [];
  }

  @action
  updateScreenLoad(bool state) {
    screenLoad = state;
  }

  @action
  updateListMyTasks(List<String> tasks) {
    myTasks = tasks;
  }

  @action
  deleteTask(String value) async {
    //myTasks.remove(value);
    myTasks = List.from(myTasks..remove(value));
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList("myTasks", myTasks);
  }
}
