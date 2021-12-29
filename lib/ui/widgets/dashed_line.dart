import 'package:flutter/material.dart';


class MyClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        painter: MyLinePainter(),
      ),
    );
  }
}

class MyLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    num max = 100;
    var dashWidth, dashSpace = 5;
    double startX = 0;
    final paint = Paint()..color = Colors.grey;
    while (max >= 0) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint..strokeWidth = 1);
      final space = (dashSpace + dashWidth);
      startX += space;
      max -= space;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}