import 'package:bg_trader/common/styles/rounded_container.dart';
import 'package:bg_trader/common/widgets/appbar/appbar.dart';
import 'package:bg_trader/common/widgets/custom_shapes/container/search_container.dart';
import 'package:bg_trader/common/widgets/productscart/cart/cart_menu_icon.dart';
import 'package:bg_trader/common/widgets/text/section_heading.dart';
import 'package:bg_trader/utils/constants/color.dart';
import 'package:bg_trader/utils/constants/image_strings.dart';
import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:bg_trader/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCartConterIcon(
            onPressed: () {},
            iconColor: null,
          ),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunction.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSize.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      // -- Search bar

                      const SizedBox(
                        height: TSize.spaceBtwItems,
                      ),
                      const TSearchContainer(
                          text: 'Search is Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero),
                      const SizedBox(height: TSize.spaceBtwSections),

                      /// -- Featured BRANDS
                      TSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () {},
                      ),
                      const SizedBox(height: TSize.spaceBtwItems / 1.5),

                      TRoundedContainer(
                          padding: const EdgeInsets.all(TSize.sm),
                          showBorder: true,
                          backgroundColor: Colors.transparent,
                          child: Row(children: [
                            // Icon,
                            Container(
                                width: 56,
                                height: 56,
                                padding: const EdgeInsets.all(TSize.sm),
                                decoration: BoxDecoration(
                                  color: THelperFunction.isDarkMode(context)
                                      ? TColors.black
                                      : TColors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Image(
                                  image: const AssetImage(TImage.category2),
                                  color: THelperFunction.isDarkMode(
                                      context ? TColors.white : TColors.dark),
                                ))
                          ]))
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
