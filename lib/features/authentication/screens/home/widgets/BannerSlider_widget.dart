import 'package:bg_trader/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:bg_trader/features/authentication/screens/home/widgets/Banner_image_widget.dart';
import 'package:bg_trader/features/shop/controllers/home_Controller.dart';
import 'package:bg_trader/utils/constants/color.dart';

import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomePromoSlider extends StatelessWidget {
  const THomePromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => TBannerImage(imageUrl: url)).toList(),
        ),
        const SizedBox(
          height: TSize.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircularContainer(
                    margin: const EdgeInsets.only(right: 10),
                    widht: 20,
                    height: 4,
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? TColors.primary
                        : TColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
