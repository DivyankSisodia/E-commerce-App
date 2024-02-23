import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerce/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:myecommerce/features/authentication/screen/onboarding/onboarding_dotnavigation.dart';
import 'package:myecommerce/features/authentication/screen/onboarding/onboarding_nextbutton.dart';
import 'package:myecommerce/features/authentication/screen/onboarding/onboarding_page.dart';
import 'package:myecommerce/features/authentication/screen/onboarding/onboarding_skip.dart';

import 'package:myecommerce/utils/constants/image_string.dart';
// import 'package:myecommerce/utils/constants/sizes.dart';
import 'package:myecommerce/utils/constants/text_string.dart';
// import 'package:myecommerce/utils/device/device_utitlity.dart';
// import 'package:myecommerce/utils/helpers/helper_functions.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:iconsax/iconsax.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController()); // bcoz of get.put we can use get.find and get.instnace.
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),

            ],
          ),
        
        // skip button
          const OnBoardingSkip(),

        // indicator
          const OnBoardingDotNavigation(),

        // next button
          const onboardingButton(),

        ],
      ),
    );
  }
}






