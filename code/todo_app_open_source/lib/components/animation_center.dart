import 'package:flare_flutter/flare_actor.dart';
import "package:flutter/material.dart";
import 'package:get_it/get_it.dart';
import 'package:todo_app_open_source/controller/controller.dart';

class AnimationCenter extends StatefulWidget {
  @override
  _AnimationCenterState createState() => _AnimationCenterState();
}

class _AnimationCenterState extends State<AnimationCenter> {
  final controller = GetIt.I.get<Controller>();
  get mediaQuery => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: mediaQuery.height * 0.12),
        child: Stack(
          children: <Widget>[
            Container(
              width: mediaQuery.width,
              height: controller.animation == "minion"
                  ? mediaQuery.height * 0.34
                  : mediaQuery.height * 0.38,
              child: FlareActor(
                "assets/" + controller.animation + ".flr",
                alignment: Alignment.center,
                shouldClip: false,
                fit: BoxFit.contain,
                animation: "Stand",
              ),
            ),
            Positioned(
              top: controller.animation == "minion"
                  ? mediaQuery.height * 0.28
                  : mediaQuery.height * 0.32,
              left: mediaQuery.width * 0.21,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Esse app é open source",
                    style: TextStyle(
                        color: controller.secondColorApp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Contribua você também",
                    style: TextStyle(
                        color: controller.secondColorApp,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
