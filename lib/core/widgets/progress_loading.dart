import 'dart:math' as math;
import 'package:flutter/material.dart';

class CustomProgressWidget extends StatefulWidget {
  @override
  _CustomProgressWidgetState createState() => _CustomProgressWidgetState();
}

class _CustomProgressWidgetState extends State<CustomProgressWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return CustomPaint(
            painter: ProgressPainter(controller),
          );
        },
      ),
    );
  }
}

class ProgressPainter extends CustomPainter {
  late double startAngle;
  late double sweepAngle;
  final AnimationController controller;

  ProgressPainter(this.controller) {
    startAngle = Tween(begin: math.pi * 1.5, end: math.pi * 3.5)
        .chain(CurveTween(curve: const Interval(0.5, 1.0)))
        .evaluate(controller);
    sweepAngle = math.sin(controller.value * math.pi) * math.pi;
  }

  @override
  void paint(Canvas canvas, Size size) {
    double side = math.min(size.width, size.height);
    Paint paint = Paint()
      ..color = Colors.blue
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke;
    canvas.drawArc(
      Offset.zero & Size(side, side),
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(ProgressPainter other) {
    return startAngle != other.startAngle || sweepAngle != other.sweepAngle;
  }
}
