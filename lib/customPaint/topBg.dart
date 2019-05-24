import 'package:flutter/material.dart';
import 'dart:math';

class DrawCircle extends CustomPainter {
  Paint _paint;
  final color   = const Color(0xff00a650);
  final centerr = const Color(0xffb4002f);
  DrawCircle() {
    _paint = Paint()
      ..color = color
      ..strokeWidth = 510.0
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(Offset(30.0, 100.0), 250.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }


}

