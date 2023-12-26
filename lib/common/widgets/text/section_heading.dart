import 'package:bg_trader/utils/constants/color.dart';
import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View all',
    this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSize.defaultSpace),
      child: Column(children: [
        Row(
          children: [
            Text('Popular Categories',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: TColors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
            if (showActionButton)
              TextButton(onPressed: onPressed, child: Text(buttonTitle))
          ],
        )
      ]),
    );
  }
}
