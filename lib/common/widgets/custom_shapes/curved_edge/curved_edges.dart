
import 'package:bg_trader/common/widgets/custom_shapes/curved_edge/curvedEdge_widget.dart';
import 'package:flutter/material.dart';

class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomeCurveEdges(),
      child: child,
    );
  }
}