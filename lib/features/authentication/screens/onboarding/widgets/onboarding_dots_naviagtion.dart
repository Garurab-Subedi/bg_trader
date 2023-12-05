import 'package:bg_trader/features/authentication/controllers/onboarding_controller.dart';
import 'package:bg_trader/utils/constants/color.dart';
import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:bg_trader/utils/device/device_utility.dart';
import 'package:bg_trader/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDots extends StatelessWidget {
  const OnBoardingDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = THelperFunction.isDarkMode(context);
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 20,
      left: TSize.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: WormEffect(
            activeDotColor: dark ? TColors.light : TColors.dark, dotHeight: 5),
      ),
    );
  }
}
