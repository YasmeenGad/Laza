import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/config/media_query_config.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/app_text_styles.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton(
      {super.key,
      required this.text,
      required this.logo,
      required this.clr,
      this.onTap});

  final String text, logo;
  final Color clr;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.h,
        width: context.width,
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logo,
              width: 22.h,
              height: 22.h,
            ),
            Text(
              text,
              style:
                  AppTextStyles.medium17.copyWith(color: AppColors.kWhiteColor),
            )
          ],
        ),
      ),
    );
  }
}
