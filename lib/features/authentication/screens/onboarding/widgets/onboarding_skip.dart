import 'package:bg_trader/features/authentication/controllers/onboarding_controller.dart';
import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:bg_trader/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSize.defaultSpace,
        child: TextButton(
          child: const Text('Skip'),
          onPressed: () => OnBoardingController.instance.skipPage(),
        ));
  }
}
