import 'package:bg_trader/common/widgets/appbar/appbar.dart';
import 'package:bg_trader/common/widgets/custom_shapes/container/primary_container.dart';
import 'package:bg_trader/common/widgets/productscart/cart_menu_icon.dart';
import 'package:bg_trader/utils/constants/color.dart';
import 'package:bg_trader/utils/constants/text_strings.dart';
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
                child: Column(children: [
              TAppBar(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(TTexts.homeAppbarTitle,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .apply(color: TColors.grey)),
                    Text(TTexts.homeAppbarSubTitle,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .apply(color: TColors.white)),
                  ],
                ),
                actions: [
                  TCartConterIcon(onPressed: () {}, iconColor: TColors.white)
                ],
              )
            ]))
          ],
        ),
      ),
    );
  }
}
