import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:bg_trader/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingWidget extends StatelessWidget {
  final String image, title, subtitle;

  const OnBoardingWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSize.defaultSpace),
      child: Column(
        children: [
          Image(
            width: THelperFunction.screenWidht() * 0.8,
            height: THelperFunction.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSize.spaceBtwItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
