import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/features/onBoardingView/presentation/widgets/social_auth_button.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../generated/assets.dart';

class SocialAuthSection extends StatelessWidget {
  const SocialAuthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SocialAuthButton(
          text: 'Facebook',
          logo: Assets.imagesFacebook,
          clr: AppColors.kBlueColor,
        ),
        const SocialAuthButton(
          text: 'Twitter',
          logo: Assets.imagesTwitter,
          clr: AppColors.kTwitterBlue,
        ),
        const SocialAuthButton(
          text: 'Google',
          logo: Assets.imagesGoogle,
          clr: AppColors.kRedColor,
        ),
      ],
    );
  }
}
