import 'package:flutter/material.dart';
import 'package:myecommerce/utils/constants/sizes.dart';

import '../../../../utils/constants/colors.dart';

class ColorContainer extends StatelessWidget {
  const ColorContainer({
    super.key,
    this.height,
    this.width,
    this.radius = TSizes.cardRadiusLg,
    this.padding,
    this.child,
    this.margin,
    this.backgroundColor = TColors.white,
    this.borderColor = TColors.borderPrimary,
    this.showBorder = false,
  });

  final double? height;
  final double? width;
  final double radius;
  final EdgeInsets? padding;
  final Widget? child;
  final EdgeInsets? margin;
  final Color backgroundColor;
  final bool showBorder;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
