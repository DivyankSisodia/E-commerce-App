import 'package:flutter/widgets.dart';
import 'package:myecommerce/common/widgets/custom_shapes/containers/circular_container.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 370,
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: ColorContainer(
                    backgroundColor: TColors.white.withOpacity(0.1),
                  )),
              Positioned(
                top: 100,
                right: -300,
                child: ColorContainer(
                  backgroundColor: TColors.white.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
