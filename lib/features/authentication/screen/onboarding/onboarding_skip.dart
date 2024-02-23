import 'package:flutter/material.dart';
import 'package:myecommerce/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:myecommerce/utils/constants/text_string.dart';
import 'package:myecommerce/utils/device/device_utitlity.dart';

import '../../../../utils/constants/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnBoardingController.instance.skipPage();
        },
        child: Text(
          TTexts.skip,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
