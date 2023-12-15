import 'package:flutter/material.dart';

class TCustomeCurveEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurves = Offset(0, size.height - 20);
    final lastCurves = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCurves.dx, firstCurves.dy, lastCurves.dx, lastCurves.dy);

    final secondFirstCurves = Offset(0, size.height - 20);
    final secondLastCurves = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(secondFirstCurves.dx, secondFirstCurves.dy,
        secondLastCurves.dx, secondLastCurves.dy);

    final thirdfirstCurves = Offset(size.width, size.height - 20);
    final thirdlastCurves = Offset(size.width, size.height);
    path.quadraticBezierTo(thirdfirstCurves.dx, thirdfirstCurves.dy,
        thirdlastCurves.dx, thirdlastCurves.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
