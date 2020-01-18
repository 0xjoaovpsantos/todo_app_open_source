import "package:flutter/material.dart";
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app_open_source/components/animation_center.dart';
import 'package:todo_app_open_source/components/header.dart';
import 'package:todo_app_open_source/components/listtasks.dart';
import 'package:todo_app_open_source/controller/controller.dart';
import 'package:todo_app_open_source/pages/my_task.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = GetIt.I.get<Controller>();
  get mediaQuery => MediaQuery.of(context).size;

  @override
  void initState() {
    final controller = GetIt.I.get<Controller>();

    controller.updateScreenLoad(true);
    controller.searchTask().then((resp) {
      setState(() {
        controller.updateScreenLoad(false);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        backgroundColor: controller.primaryColorApp,
        body: controller.screenLoad
            ? Center(
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(),
                ),
              )
            : SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(
                      top: mediaQuery.height * 0.1,
                      left: mediaQuery.width * 0.08,
                      right: mediaQuery.width * 0.08),
                  child: Column(children: <Widget>[
                    Header(),
                    controller.myTasks.length == 0
                        ? AnimationCenter()
                        : ListTasks(),
                  ]),
                ),
              ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: controller.secondColorApp,
          icon: Icon(
            Icons.add,
            color: controller.primaryColorApp,
          ),
          label: Text("Adicionar nova tarefa",
              style: TextStyle(color: controller.primaryColorApp)),
          onPressed: () {
            controller.initNumberCharacters();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyTask()));
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
    });
  }
}
