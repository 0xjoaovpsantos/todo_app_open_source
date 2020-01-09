import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  @observable
  int numberCharacters = 0;

  @action
  updateNumberCharacters(String text) {
    numberCharacters = text.length;
  }

  @action
  initNumberCharacters() {
    numberCharacters = 0;
  }
}
