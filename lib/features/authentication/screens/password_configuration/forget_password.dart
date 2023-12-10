import 'package:bg_trader/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:bg_trader/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(TTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSize.spaceBtwInputFields),
            Text(
              TTexts.forgetPasswordsubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: TSize.spaceBtwSections,
            ),

            // Text file
            TextFormField(
                decoration: const InputDecoration(
                    labelText: TTexts.email,
                    prefixIcon: Icon(Iconsax.direct_right))),

            const SizedBox(
              height: TSize.spaceBtwSections,
            ),

            // submit button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => const RestPasswordScreen()),
                    child: const Text(TTexts.submit)))
          ],
        ),
      ),
    );
  }
}
