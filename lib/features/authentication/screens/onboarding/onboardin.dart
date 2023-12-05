import 'package:bg_trader/features/authentication/controllers/onboarding_controller.dart';
import 'package:bg_trader/features/authentication/screens/onboarding/widgets/onboarding_button.dart';
import 'package:bg_trader/features/authentication/screens/onboarding/widgets/onboarding_dots_naviagtion.dart';
import 'package:bg_trader/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:bg_trader/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:bg_trader/utils/constants/image_strings.dart';
import 'package:bg_trader/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scroolable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingWidget(
                image: TImage.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onsubBoardingTitle1,
              ),
              OnBoardingWidget(
                image: TImage.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onsubBoardingTitle2,
              ),
              OnBoardingWidget(
                image: TImage.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onsubBoardingTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation SmoothPageIndicatior
          const OnBoardingDots(),

          // Circular Buttons
          const OnboardingButton()
        ],
      ),
    );
  }
}
