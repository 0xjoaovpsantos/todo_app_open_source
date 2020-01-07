import 'package:flare_flutter/flare_actor.dart';
import "package:flutter/material.dart";

class AnimationCenter extends StatefulWidget {
  @override
  _AnimationCenterState createState() => _AnimationCenterState();
}

class _AnimationCenterState extends State<AnimationCenter> {
  get mediaQuery => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: mediaQuery.height * 0.12),
        child: Stack(
          children: <Widget>[
            Container(
              width: mediaQuery.width,
              height: mediaQuery.height * 0.34,
              child: FlareActor(
                "assets/minion.flr",
                alignment: Alignment.center,
                shouldClip: false,
                fit: BoxFit.contain,
                animation: "Stand",
              ),
            ),
            Positioned(
              top: mediaQuery.height * 0.28,
              left: mediaQuery.width * 0.21,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Esse app é open source",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Contribua você também",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
