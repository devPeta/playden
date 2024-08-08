import 'package:flutter/material.dart';
import 'package:playden/core/constant/playSizes.dart';

class playSpacing{
  ///PaddingWithAppBarHeight
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: playSizes.appBarHeight,
    right: playSizes.defaultSpaceMd,
    bottom: playSizes.defaultSpaceMd,
    left: playSizes.defaultSpaceMd,
  );

  ///paddingWithAppBarHeight Small
  static const EdgeInsetsGeometry paddingWithAppBarHeightSm = EdgeInsets.only(
    top: playSizes.appBarHeightSm,
    right: playSizes.defaultSpaceMd,
    bottom: playSizes.defaultSpaceMd,
    left: playSizes.defaultSpaceMd,
  );

  ///paddingWithAppBarHeight BG
  static const EdgeInsetsGeometry paddingWithAppBarHeightBg = EdgeInsets.only(
    top: playSizes.appBarHeightBg,
    right: playSizes.defaultSpaceMd,
    bottom: playSizes.defaultSpaceMd,
    left: playSizes.defaultSpaceMd,
  );
}