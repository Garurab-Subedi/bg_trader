import 'package:bg_trader/utils/constants/color.dart';
import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:bg_trader/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class TIcon extends StatelessWidget {
  // Acustom Circular Icon widget with a background color

  // Properties are:
  // Container [width] [height] and [backgroundColor]

  // Icons [size], [color] and [onPressed]
  const TIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSize.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor != null
              ? backgroundColor!
              : THelperFunction.isDarkMode(context)
                  ? TColors.black.withOpacity(0.9)
                  : TColors.white.withOpacity(0.9),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: color, size: size),
        ),
      ),
    );
  }
}
