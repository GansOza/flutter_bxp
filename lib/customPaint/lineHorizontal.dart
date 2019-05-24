import 'package:flutter/material.dart';


class Drawhorizontalline extends CustomPainter {

  Paint _paint;
  bool reverse;

  Drawhorizontalline(this.reverse) {
    _paint = Paint()
      ..color = Colors.black38
      ..strokeWidth = .3
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    if(!reverse){
      canvas.drawLine(Offset(110.0, 200.0), Offset(290.0, 0.0), _paint);
    }
    else
    {
      canvas.drawLine(Offset(170.0, 0.0), Offset(-160.0, 0.0), _paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}