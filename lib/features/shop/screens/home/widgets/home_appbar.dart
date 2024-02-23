import 'package:flutter/material.dart';
import 'package:myecommerce/utils/constants/text_string.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/product_cart/car_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: const Color.fromARGB(255, 223, 219, 219)),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white),
          ),
        ],
      ),
      actions: [
        CardCounterIcon(
          onPressed: () {},
          iconColor: TColors.white,
        ),
      ],
    );
  }
}
