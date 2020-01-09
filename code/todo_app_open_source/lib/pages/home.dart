import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:todo_app_open_source/components/animation_center.dart';
import 'package:todo_app_open_source/components/header.dart';
import 'package:todo_app_open_source/controller/controller.dart';
import 'package:todo_app_open_source/pages/my_task.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color floatingactionbuttonColor = Color(0xFF5B2FD3);
  get mediaQuery => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              top: mediaQuery.height * 0.1,
              left: mediaQuery.width * 0.08,
              right: mediaQuery.width * 0.08),
          child: Column(children: <Widget>[
            Header(),
            AnimationCenter(),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blue,
        icon: Icon(Icons.add),
        label: Text("Adicionar nova tarefa"),
        onPressed: () {
          controller.initNumberCharacters();
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyTask()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
