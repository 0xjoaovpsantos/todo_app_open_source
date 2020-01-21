import "package:flutter/material.dart";
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app_open_source/controller/controller.dart';
import 'package:todo_app_open_source/pages/home.dart';

class MyTask extends StatefulWidget {
  @override
  _MyTaskState createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  final controller = GetIt.I.get<Controller>();
  TextEditingController textArea = TextEditingController();
  get mediaQuery => MediaQuery.of(context).size;

  @override
  void dispose() {
    controller.storeTask();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: controller.primaryColorApp,
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.only(
                    top: mediaQuery.height * 0.1,
                    left: mediaQuery.width * 0.1,
                    right: mediaQuery.width * 0.1),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          child: Icon(Icons.keyboard_backspace,
                              color: controller.secondColorApp,
                              size: mediaQuery.width * 0.08),
                          onTap: () {
                            controller.storeTask();
                            Navigator.pop(context);
                          },
                        ),
                        Text("Minha tarefa",
                            style: TextStyle(
                                color: controller.secondColorApp,
                                fontSize: mediaQuery.width * 0.08,
                                fontWeight: FontWeight.bold)),
                        GestureDetector(
                          child: Icon(Icons.close,
                              color: controller.secondColorApp,
                              size: mediaQuery.width * 0.08),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: mediaQuery.height * 0.04),
                      child: TextField(
                        style: TextStyle(color: controller.textColor),
                        controller: textArea,
                        onChanged: (text) {
                          controller.updateNumberCharacters(text);
                        },
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                            hintText: "Escreve ai sem pressa!",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: mediaQuery.height * 0.04),
                      child: Observer(
                        builder: (_) {
                          return Text(
                            "${controller.numberCharacters} Caracteres",
                            style: TextStyle(color: Colors.grey),
                          );
                        },
                      ),
                    )
                  ],
                ))));
  }
}
