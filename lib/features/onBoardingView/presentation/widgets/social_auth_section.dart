import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/features/onBoardingView/presentation/widgets/social_auth_button.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

class SocialAuthSection extends StatelessWidget {
  const SocialAuthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialAuthButton(
          text: S.of(context).facebook,
          logo: Assets.imagesFacebook,
          clr: AppColors.kBlueColor,
        ),
        SocialAuthButton(
          text: S.of(context).twitter,
          logo: Assets.imagesTwitter,
          clr: AppColors.kTwitterBlue,
        ),
        SocialAuthButton(
          text: S.of(context).google,
          logo: Assets.imagesGoogle,
          clr: AppColors.kRedColor,
        ),
      ],
    );
  }
}
