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
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              child: TCircularContainer(
                backgroundColor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}