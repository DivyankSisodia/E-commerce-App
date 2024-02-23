import 'package:flutter/material.dart';
import 'package:myecommerce/features/authentication/screen/signup.widgets/signup_form.dart';
import 'package:myecommerce/utils/constants/sizes.dart';
import 'package:myecommerce/utils/constants/text_string.dart';
import 'package:myecommerce/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TSignup_form(dark: dark),
            ],
          ),
        ),
      ),
    );
  }
}

