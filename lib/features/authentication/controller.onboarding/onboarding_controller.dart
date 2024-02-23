import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/state_manager.dart';
import 'package:myecommerce/features/authentication/screen/login/widgets/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update current index when page scoll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specified got selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

// Update current index and move to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // update current index and move to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
