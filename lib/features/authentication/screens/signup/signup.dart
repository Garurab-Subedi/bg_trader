import 'package:bg_trader/features/authentication/screens/signup/widgets/termsandContion.dart';
import 'package:bg_trader/utils/constants/color.dart';
import 'package:bg_trader/utils/constants/image_strings.dart';
import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:bg_trader/utils/constants/text_strings.dart';
import 'package:bg_trader/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// -- Title
              Text(TTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),

              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              /// -- Form
              Form(
                  child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(
                        child: TextField(
                          expands: false,
                          decoration: InputDecoration(
                              labelText: TTexts.firstName,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                      SizedBox(width: TSize.spaceBtwInputFields),
                      Expanded(
                        child: TextField(
                          expands: false,
                          decoration: InputDecoration(
                              labelText: TTexts.lastName,
                              prefixIcon: Icon(Iconsax.user)),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: TSize.spaceBtwInputFields,
                  ),

                  // -- Useranme
                  const TextField(
                    expands: false,
                    decoration: InputDecoration(
                        labelText: TTexts.email,
                        prefixIcon: Icon(Iconsax.direct)),
                  ),
                  // -- Email
                  const SizedBox(
                    height: TSize.spaceBtwInputFields,
                  ),

                  const TextField(
                    expands: false,
                    decoration: InputDecoration(
                        labelText: TTexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call)),
                  ),

                  // -- Password
                  const SizedBox(
                    height: TSize.spaceBtwInputFields,
                  ),

                  const TextField(
                    expands: false,
                    decoration: InputDecoration(
                        labelText: TTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash)),
                  ),
                  // Terms and Condition CheckBox
                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),
                  const TermsAndContiondion(),

                  const SizedBox(
                    height: TSize.spaceBtwSections,
                  ),

                  // -- sign up Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            // Get.to(() => );
                          },
                          child: const Text(TTexts.createAccount))),

                  const SizedBox(
                    height: TSize.spaceBtwSections,
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
              ))
            ],
          ),
        ),
      ),
    );
  }
}
