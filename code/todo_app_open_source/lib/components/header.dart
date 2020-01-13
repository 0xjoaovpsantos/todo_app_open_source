import "package:flutter/material.dart";
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app_open_source/controller/controller.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  final controller = GetIt.I.get<Controller>();
  Color headerTextColor2 = Color(0xD3D8E0);
  Color headerTextColor = Color(0xFF3A4068);
  get mediaQuery => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: AutoSizeText(
              "Eae jovem!",
              maxLines: 1,
              style: TextStyle(
                  fontSize: mediaQuery.width * 0.08,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Icon(Icons.more_horiz)
        ],
      ),
      Row(
        children: <Widget>[
          Text(
            "Você tem ",
            style: TextStyle(color: Colors.grey),
          ),
          Observer(builder: (context) {
            return Text(
                controller.myTasks.length == 1
                    ? "${controller.myTasks.length} tarefa"
                    : "${controller.myTasks.length} tarefas",
                style: TextStyle(color: Colors.blue));
          }),
          Text(" para completar", style: TextStyle(color: Colors.grey))
        ],
      )
    ]);
  }
}
