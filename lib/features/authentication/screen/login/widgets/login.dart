import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:myecommerce/common/styles/spacing_styles.dart';
import 'package:myecommerce/utils/constants/sizes.dart';
import 'package:myecommerce/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/login_signup/Login_socialicons.dart';
import 'login_form.dart';
import '../../../../../common/widgets/login_signup/login_formDivider.dart';
import 'login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingwithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TLoginHeader(dark: dark),

              const TForm(),

              const TFormDivider(dividerText: 'Or Sign In With',),

              const SizedBox(
                height: TSizes.spaceBtwSections/2,
              ),

              TSocialiconBtn(dark: dark)
            ],
          ),
        ),
      ),
    );
  }
}

