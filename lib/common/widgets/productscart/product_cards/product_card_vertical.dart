import 'package:bg_trader/common/styles/rounded_container.dart';
import 'package:bg_trader/common/styles/shadows.dart';
import 'package:bg_trader/common/widgets/icon/T_circular_icon.dart';
import 'package:bg_trader/common/widgets/text/product_title_text.dart';
import 'package:bg_trader/features/authentication/screens/home/widgets/Banner_image_widget.dart';
import 'package:bg_trader/utils/constants/color.dart';
import 'package:bg_trader/utils/constants/image_strings.dart';
import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:bg_trader/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    // Container with side padding, color, edges, radus and shadow
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSize.productImageRadius),
            color: dark ? TColors.darkerGrey : TColors.white),
        child: Column(
          children: [
            // Thumbnail, Wishlist Button, Discount top
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSize.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  // Thumbnail image
                  const TBannerImage(
                    imageUrl: TImage.product1,
                    applyImageRadius: true,
                  ),

                  //sale tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSize.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.5),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSize.xs, vertical: TSize.xs),
                      child: Text(
                        '20%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  // Favourite icon button
                  const TIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: TSize.spaceBtwItems / 2,
            ),
            // --Details
            Padding(
                padding: const EdgeInsets.only(left: TSize.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TProductTitleText(
                        title: 'Kilti for heater', smallSize: true),
                    const SizedBox(
                      height: TSize.spaceBtwItems / 2,
                    ),
                    Row(
                      children: [
                        Text(
                          'Baltra',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        const SizedBox(
                          width: TSize.xs,
                        ),
                        const Icon(Iconsax.verify5,
                            color: TColors.primary, size: TSize.iconxs)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // -- Price
                        Text(
                          'Rs.980',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: TColors.dark,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(TSize.cardRadiusMd),
                                bottomRight:
                                    Radius.circular(TSize.productImageRadius),
                              )),
                          child: const SizedBox(
                              width: TSize.iconlg * 1.2,
                              height: TSize.iconlg * 1.2,
                              child: Icon(Iconsax.add, color: TColors.white)),
                        )
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
