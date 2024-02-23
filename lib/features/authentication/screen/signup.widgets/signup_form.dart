import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerce/features/authentication/screen/signup.widgets/verify_email.dart';

import '../../../../common/widgets/login_signup/Login_socialicons.dart';
import '../../../../common/widgets/login_signup/login_formDivider.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_string.dart';

class TSignup_form extends StatelessWidget {
  const TSignup_form({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          Row(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: Checkbox(value: true, onChanged: (value) {}),
              ),
              const SizedBox(
                width: TSizes.spaceBtwSections / 4,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                  text: '${TTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: '${TTexts.privacyPolicy} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        decoration: TextDecoration.underline,
                        color: dark ? TColors.white : TColors.primary,
                        decorationColor: dark ? TColors.white : TColors.primary,
                      ),
                ),
                TextSpan(
                  text: '${TTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                TextSpan(
                  text: '${TTexts.termsOfUse} ',
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                        decoration: TextDecoration.underline,
                        color: dark ? TColors.white : TColors.primary,
                        decorationColor: dark ? TColors.white : TColors.primary,
                      ),
                ),
              ]))
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(const VerifyEmailScreen());
              },
              child: const Text(TTexts.createAccount),
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          //divider
          const TFormDivider(
            dividerText: 'Or Create Account with',
          ),

          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          TSocialiconBtn(dark: dark),
        ],
      ),
    );
  }
}
