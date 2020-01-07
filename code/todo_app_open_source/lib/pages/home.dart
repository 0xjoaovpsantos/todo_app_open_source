import "package:flutter/material.dart";
import 'package:todo_app_open_source/components/header.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get mediaQuery => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              top: mediaQuery.height * 0.1,
              left: mediaQuery.width * 0.08,
              right: mediaQuery.width * 0.08),
          child: Column(children: <Widget>[Header()]),
        ),
      ),
    );
  }
}
