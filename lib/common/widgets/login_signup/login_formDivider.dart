import 'package:flutter/material.dart';
import 'package:myecommerce/utils/constants/colors.dart';
import 'package:myecommerce/utils/helpers/helper_functions.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key, required this.dividerText,
    // required this.dark,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const Flexible(
          child: Divider(
            color: TColors.darkGrey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(dividerText,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
      ],
    );
  }
}
