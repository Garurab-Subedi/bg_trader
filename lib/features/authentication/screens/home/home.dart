import 'package:bg_trader/common/widgets/custom_shapes/container/primary_container.dart';
import 'package:bg_trader/common/widgets/custom_shapes/container/search_container.dart';
import 'package:bg_trader/common/widgets/layouts/grid_layout.dart';
import 'package:bg_trader/common/widgets/productscart/product_cards/product_card_vertical.dart';
import 'package:bg_trader/common/widgets/text/section_heading.dart';
import 'package:bg_trader/features/authentication/screens/home/widgets/BannerSlider_widget.dart';

import 'package:bg_trader/features/authentication/screens/home/widgets/category_widgets.dart';
import 'package:bg_trader/features/authentication/screens/home/widgets/homeappbar_widget.dart';

import 'package:bg_trader/utils/constants/image_strings.dart';

import 'package:bg_trader/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // --AppBar --

                  const THomeAppBar(),
                  const SizedBox(height: TSize.spaceBtwSections),

                  // -- SearchBar --
                  const TSearchContainer(text: 'Search in store '),
                  const SizedBox(height: TSize.spaceBtwSections),

                  // -- Categories Heading--
                  const TSectionHeading(
                    title: 'Popular Categories',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSize.spaceBtwItems,
                  ),

                  //categories
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, index) {
                        return TVerticalImagetext(
                          image: TImage.category1,
                          title: 'electronic',
                          onTap: () {},
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            // Body
            Padding(
              padding: const EdgeInsets.all(TSize.defaultSpace),
              child: Column(
                children: [
                  // -- Promo slider
                  const THomePromoSlider(
                    banners: [TImage.banner1, TImage.banner2, TImage.banner3],
                  ),
                  const SizedBox(height: TSize.spaceBtwSections),

                  // -- Pupular Products
                  TGridView(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
