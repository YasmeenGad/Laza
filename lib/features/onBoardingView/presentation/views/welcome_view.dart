import 'package:flutter/material.dart';
import 'package:laza/core/utils/base/auth_base_layout.dart';
import 'package:laza/core/utils/widgets/auth_footer_prompt.dart';
import 'package:laza/features/onBoardingView/presentation/widgets/social_auth_section.dart';
import 'package:laza/generated/l10n.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBaseLayout(
      title: S.of(context).letsGetStarted,
      buttonText: S.of(context).createAnAccount,
      body: const SocialAuthSection(),
      footerPrompt: AuthFooterPrompt(
        mainText: S.of(context).alreadyHaveAnAccount,
        actionText: S.of(context).signIn,
        onTap: () {},
      ),
      showLanguageIcon: true,
    );
  }
}
