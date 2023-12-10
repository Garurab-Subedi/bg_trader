import 'package:bg_trader/features/authentication/screens/password_configuration/forget_password.dart';

import 'package:bg_trader/features/authentication/screens/signup/signup.dart';
import 'package:bg_trader/utils/constants/sizes.dart';
import 'package:bg_trader/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSize.spaceBtwSections),
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
                    onPressed: () => Get.to(() => const ForgetPasswordScreen()),
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
                    onPressed: () {
                      // Get.to(() => );
                    },
                    child: const Text(TTexts.signIn))),

            const SizedBox(
              height: TSize.spaceBtwItems,
            ),

            /// -- Create account button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignUpScreen()),
                    child: const Text(TTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
