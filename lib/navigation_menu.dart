import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerce/features/shop/screens/home/home.dart';
import 'package:myecommerce/features/shop/screens/store/store.dart';
import 'package:myecommerce/utils/constants/colors.dart';
import 'package:myecommerce/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkmode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 70,
          elevation: 0,
          selectedIndex: controller.selectIndex.value,
          onDestinationSelected: (index) =>
              controller.selectIndex.value = index,
          backgroundColor: darkmode ? Colors.black : Colors.white,
          indicatorColor: darkmode
              ? TColors.white.withOpacity(0.1)
              : TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(
                icon: Icon(Iconsax.heart), label: 'Whitelist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectIndex = 0.obs;

  final screens = [
    Container(child: const HomeScreen()),
    Container(child: const StoreScreen()),
    Container(color: Colors.redAccent),
    Container(color: Colors.lightBlueAccent),
  ];
}
