import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = false,
    required this.title,
    this.buttontile = 'view all',
    this.onButtonPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttontile;
  final void Function()? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onButtonPressed, child: Text(buttontile)),
      ],
    );
  }
}
