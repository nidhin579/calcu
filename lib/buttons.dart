import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Buttons extends StatelessWidget {
  final String s;
  final Function onpress;
  Buttons({this.s, this.onpress});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      child: NeumorphicButton(
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
        minDistance: -15.0,
        duration: Duration(milliseconds: 200),
        child: Center(
            child: Text(
          s,
          style: TextStyle(
            fontSize: 20,
          ),
        )),
        onClick: onpress,
      ),
    );
  }
}
