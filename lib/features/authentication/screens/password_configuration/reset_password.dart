import 'package:bg_trader/features/authentication/screens/login/login.dart';
import 'package:bg_trader/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:bg_trader/utils/constants/image_strings.dart';
import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:bg_trader/utils/constants/text_strings.dart';
import 'package:bg_trader/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class RestPasswordScreen extends StatelessWidget {
  const RestPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
          child: Column(
            children: [
              /// -- Image with  60% of screen width
              Image(
                  image: const AssetImage(TImage.welcome),
                  width: THelperFunction.screenWidht() * 0.6),
              const SizedBox(
                height: TSize.spaceBtwSections,
              ),

              Text(TTexts.chaneYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),

              Text(TTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const LoginScreen()),
                    child: const Text(TTexts.done),
                  )),
              const SizedBox(
                height: TSize.spaceBtwItems,
              ),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => Get.to(() => const ForgetPasswordScreen()),
                    child: const Text(TTexts.resendEmail),
                  )),
            ],
          )),
    );
  }
}

class CupertionIcons {}
