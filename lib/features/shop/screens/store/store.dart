import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:myecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:myecommerce/utils/constants/sizes.dart';
import 'package:myecommerce/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/Text/section_heading.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/search_bar.dart';
import '../../../../common/widgets/images/circular_images.dart';
import '../../../../common/widgets/product_cart/car_menu_icon.dart';
import '../../../../utils/constants/image_string.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CartCounterIcon(
            onPressed: () {},
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? Colors.black
                  : Colors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(
                  TSizes.defaultSpace,
                ),
                child: ListView(
                  children: [
                    // SEARCH BAR

                    const SizedBox(height: TSizes.spaceBtwItems),

                    const SearchContainer(
                      title: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),

                    const SizedBox(height: TSizes.spaceBtwSections),

                    // ---Featured PRODUCTS---

                    SectionHeading(
                      title: 'Featured Products',
                      showActionButton: true,
                      buttontile: 'view all',
                      onButtonPressed: () {},
                    ),

                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                    ColorContainer(
                      padding: const EdgeInsets.all(TSizes.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          //  --- ICONS ---
                          CircularImage(
                            isNetworkImage: false,
                            image: TImages.clothIcon,
                            backgroundColor: Colors.transparent,
                            overlayColor: THelperFunctions.isDarkMode(context) ? Colors.white : Colors.black,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}

