import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSize.appBarHeight,
    left: TSize.defaultSpace,
    bottom: TSize.defaultSpace,
    right: TSize.defaultSpace,
  );
}
