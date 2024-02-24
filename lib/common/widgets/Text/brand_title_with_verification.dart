import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerce/common/widgets/Text/brand_title_text.dart';
import 'package:myecommerce/utils/constants/enums.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class BrandTitleWithVerification extends StatelessWidget {
  const BrandTitleWithVerification({
    super.key,
    required this.title,
    this.textColor,
    this.iconColor = TColors.primary,
     this.maxLine = 1,
    this.textAlign = TextAlign.center,
     this.brandTextSize = TextSizes.small,
  });

  final String title;
  final Color? textColor, iconColor;
  final int maxLine;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        BrandTitleText(title: title, color: textColor, maxLine: maxLine, textAlign: textAlign, brandTextSize: brandTextSize),
        const SizedBox(
          width: TSizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: TColors.primary,
          size: TSizes.iconXs,
        )
      ],
    );
  }
}
