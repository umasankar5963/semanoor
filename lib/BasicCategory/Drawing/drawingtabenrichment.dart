import 'package:flutter/material.dart';

class Drawing extends StatefulWidget {
  const Drawing({super.key});

  @override
  State<Drawing> createState() => _DrawingState();
}

class _DrawingState extends State<Drawing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomPaint(
      painter: Painter(),
      child: Container(),
    ));
  }
}

class Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;
    var path = Path();
    path.moveTo(size.width, size.height / 2);
    // path.lineTo(0, size.height / 2);
    // path.close();
    // path.lineTo(0, size.height / 3);
    // path.close();
    // path.lineTo(0, size.height / 4);
    // path.close();
    // path.lineTo(0, size.height / 5);
    // path.close();
    path.lineTo(0, size.width * 2);
    path.close();
    path.moveTo(0, size.height / 2);

    path.lineTo(size.width / 2, size.height);
    path.close();
    path.moveTo(size.width / 2, 0);

    path.lineTo(0, size.height / 2);
    path.close();
    path.moveTo(size.width / 2, 0);

    path.lineTo(size.width, size.height / 2);
    path.close();

    canvas.drawPath(path, paint);

    path.close();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
