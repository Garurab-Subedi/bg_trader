import 'package:bg_trader/common/styles/spacing_styles.dart';
import 'package:bg_trader/utils/constants/color.dart';
import 'package:bg_trader/utils/constants/image_strings.dart';
import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:bg_trader/utils/constants/text_strings.dart';
import 'package:bg_trader/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImage.lightAppLogo : TImage.darkAppLogo),
                  ),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: TSize.sm,
                  ),
                  Text(
                    TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ],
              ),

              //// Form
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: TSize.spaceBtwSections),
                child: Form(
                  child: Column(
                    children: [
                      // Email
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: TTexts.email),
                      ),
                      const SizedBox(
                        height: TSize.spaceBtwInputFields,
                      ),

                      /// Pasword
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(
                        height: TSize.spaceBtwInputFields / 2,
                      ),

                      /// Remeber Me $ Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// -- Rember Me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(TTexts.rememberMe)
                            ],
                          ),

                          /// -- Forget Passworord
                          TextButton(
                              onPressed: () {},
                              child: const Text(TTexts.forgetPassword))
                        ],
                      ),
                      const SizedBox(
                        height: TSize.spaceBtwSections,
                      ),

                      /// -- Sign In button
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(TTexts.signIn))),

                      const SizedBox(
                        height: TSize.spaceBtwItems,
                      ),

                      /// -- Create account button
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Text(TTexts.createAccount))),
                    ],
                  ),
                ),
              ),

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
