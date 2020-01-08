import "package:flutter/material.dart";
import 'package:todo_app_open_source/pages/home.dart';

class MyTask extends StatefulWidget {
  @override
  _MyTaskState createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  get mediaQuery => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
                              color: Colors.blue,
                              size: mediaQuery.width * 0.08),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                        ),
                        Text("Minha tarefa",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: mediaQuery.width * 0.08,
                                fontWeight: FontWeight.bold)),
                        GestureDetector(
                          child: Icon(Icons.close,
                              color: Colors.blue,
                              size: mediaQuery.width * 0.08),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: mediaQuery.height * 0.04),
                      child: TextField(
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
                      child: Text(
                        "0 Caracteres",
                        style: TextStyle(color: Colors.grey),
                      ),
                    )
                  ],
                ))));
  }
}
