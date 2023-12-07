import 'package:bg_trader/common/styles/spacing_styles.dart';
import 'package:bg_trader/features/authentication/screens/login/widgets/loginform_widget.dart';
import 'package:bg_trader/features/authentication/screens/login/widgets/loginheader_widget.dart';
import 'package:bg_trader/utils/constants/color.dart';
import 'package:bg_trader/utils/constants/image_strings.dart';
import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:bg_trader/utils/constants/text_strings.dart';
import 'package:bg_trader/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, title and subtitle
              TLoginHeader(dark: dark),

              //// Form
              const TLoginForm(),

              /// -- Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                        color: dark ? TColors.darkGrey : TColors.grey,
                        thickness: 3,
                        indent: 60,
                        endIndent: 5),
                  ),
                  Text(
                    TTexts.orSingInWith.capitalize!,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                        color: dark ? TColors.darkGrey : TColors.grey,
                        thickness: 3,
                        indent: 5,
                        endIndent: 60),
                  ),
                ],
              ),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              /// -- Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: TColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      icon: const Image(
                          width: TSize.iconmd,
                          height: TSize.iconmd,
                          image: AssetImage(TImage.google)),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: TSize.spaceBtwItems,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: TColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                      icon: const Image(
                          width: TSize.iconmd,
                          height: TSize.iconmd,
                          image: AssetImage(TImage.facebook)),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
