import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerce/common/widgets/Text/section_heading.dart';
import 'package:myecommerce/common/widgets/appbar/appbar.dart';
import 'package:myecommerce/common/widgets/custom_shapes/containers/search_bar.dart';
import 'package:myecommerce/common/widgets/image_text_widgets/vertical_image_widget.dart';
import 'package:myecommerce/common/widgets/product_cart/car_menu_icon.dart';
import 'package:myecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:myecommerce/utils/constants/colors.dart';
import 'package:myecommerce/utils/constants/image_string.dart';
import 'package:myecommerce/utils/constants/sizes.dart';
import 'package:myecommerce/utils/constants/text_string.dart';
import 'package:myecommerce/utils/device/device_utitlity.dart';
import 'package:myecommerce/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
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
                    height: TSizes.spaceBtwSections / 1.5,
                  ),
                  SearchContainer(
                    title: 'Search in Store',
                    icon: Iconsax.search_normal,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: 'Popluar Categories',
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
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
              ),
              child: const Image(image: AssetImage(TImages.promoBanner1)),
            )
          ],
        ),
      ),
    );
  }
}
