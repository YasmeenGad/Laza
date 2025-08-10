import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza/core/config/media_query_config.dart';
import 'package:laza/core/styles/app_colors.dart';
import 'package:laza/generated/assets.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(Assets.imagesOnBoarding,
          width: context.width, height: context.height, fit: BoxFit.cover),
      Image.asset(Assets.imagesManLogo),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
              width: context.width,
              height: context.height * 0.3,
              decoration: BoxDecoration(
                color: AppColors.kWhiteColor,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(children: [])),
        ),
      )
    ]);
  }
}
