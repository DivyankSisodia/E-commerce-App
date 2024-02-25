import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerce/common/widgets/Text/section_heading.dart';
import 'package:myecommerce/common/widgets/custom_shapes/containers/search_bar.dart';
import 'package:myecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:myecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:myecommerce/utils/constants/colors.dart';
import 'package:myecommerce/utils/constants/image_string.dart';
import 'package:myecommerce/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections * 0.7,
                  ),
                  SearchContainer(
                    title: 'Search in Store',
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections * 0.8,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwSections / 2.5,
                        ),
                        home_categories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Heading
                  SectionHeading(
                    title: 'Popular Products',
                    showActionButton: true,
                    onButtonPressed: () {},
                  ),

                  const SizedBox(height: TSizes.spaceBtwItems),

                  // Product cards
                  GridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const ProductCardVertical()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
