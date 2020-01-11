import "package:flutter/material.dart";
import 'package:get_it/get_it.dart';
import 'package:todo_app_open_source/controller/controller.dart';

class ListTasks extends StatefulWidget {
  @override
  _ListTasksState createState() => _ListTasksState();
}

class _ListTasksState extends State<ListTasks> {
  final controller = GetIt.I.get<Controller>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Wrap(
        children: controller.myTasks.map((value) {
          return GestureDetector(
            onDoubleTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Deseja excluir essa tarefa?"),
                      content: Text(value),
                      actions: <Widget>[
                        FlatButton(
                            child: Text("Não"),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        FlatButton(
                            child: Text("Sim"),
                            onPressed: () {
                              controller.deleteTask(value);
                              Navigator.pop(context);
                            })
                      ],
                    );
                  });
            },
            onLongPress: () {},
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.assignment_late, color: Colors.red),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(left: 8.0),
                        child: Text(value),
                      )),
                    ],
                  ),
                )),
          );
        }).toList(),
      ),
    );
  }
}
