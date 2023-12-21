import 'package:bg_trader/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:bg_trader/common/widgets/custom_shapes/curved_edge/curved_edges.dart';
import 'package:bg_trader/utils/constants/color.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
        child: SizedBox(
      height: 400,
      child: Container(
          color: TColors.primary,
          child: Stack(children: [
            // Background Custom shapes
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1)),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1)),
            ),
            child,
          ])),
    ));
  }
}
