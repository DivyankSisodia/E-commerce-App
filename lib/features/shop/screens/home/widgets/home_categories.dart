import 'package:flutter/material.dart';
import 'package:myecommerce/common/widgets/image_text_widgets/vertical_image_widget.dart';
import 'package:myecommerce/utils/constants/image_string.dart';

class home_categories extends StatelessWidget {
  const home_categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return VerticalImage(
              image: TImages.shoeIcon,
              title: 'Shoes',
              onTap: () {},
            );
          }),
    );
  }
}
