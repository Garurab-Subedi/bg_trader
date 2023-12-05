import 'package:bg_trader/features/authentication/controllers/onboarding_controller.dart';
import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:bg_trader/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: TSize.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape: const CircleBorder()),
          child: const Icon(Iconsax.arrow_right_3)),
    );
  }
}
