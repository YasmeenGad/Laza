import 'package:flutter/material.dart';
import 'package:laza/core/utils/base/auth_base_layout.dart';
import 'package:laza/core/utils/widgets/auth_footer_prompt.dart';
import 'package:laza/features/onBoardingView/presentation/widgets/social_auth_section.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBaseLayout(
      title: 'Let’s Get Started',
      buttonText: 'Create an Account',
      body: const SocialAuthSection(),
      footerPrompt: AuthFooterPrompt(
        mainText: 'Already have an account?',
        actionText: 'Signin',
        onTap: () {},
      ),
    );
  }
}
