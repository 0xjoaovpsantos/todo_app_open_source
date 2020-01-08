import "package:flutter/material.dart";
import 'package:auto_size_text/auto_size_text.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
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
          Text("0 tarefas", style: TextStyle(color: Colors.blue)),
          Text(" para completar", style: TextStyle(color: Colors.grey))
        ],
      )
    ]);
  }
}
