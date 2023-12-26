import 'package:bg_trader/utils/constants/color.dart';
import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:bg_trader/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TVerticalImagetext extends StatelessWidget {
  const TVerticalImagetext({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgroundColor = TColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunction.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: TSize.spaceBtwItems),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(TSize.sm),
                decoration: BoxDecoration(
                    color: backgroundColor ??
                        (THelperFunction.isDarkMode(context)
                            ? TColors.dark
                            : TColors.white),
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                    child: Image(
                  height: 70,
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  // color: dark ? TColors.dark : TColors.light,
                )),
              ),
              // text
              const SizedBox(
                height: TSize.spaceBtwItems / 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: TSize.spaceBtwItems),
                child: SizedBox(
                  width: 55,
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(color: textColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
