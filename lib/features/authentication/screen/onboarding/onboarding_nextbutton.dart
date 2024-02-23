// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerce/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:myecommerce/utils/constants/colors.dart';
import 'package:myecommerce/utils/constants/sizes.dart';
import 'package:myecommerce/utils/helpers/helper_functions.dart';

import '../../../../utils/device/device_utitlity.dart';

class onboardingButton extends StatelessWidget {
  const onboardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () {
          OnBoardingController.instance.nextPage();
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primary : TColors.black,
        ),
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}
