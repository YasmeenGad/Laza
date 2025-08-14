import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/config/media_query_config.dart';
import 'package:laza/core/routes/route_names.dart';
import 'package:text_responsive/text_responsive.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/app_text_styles.dart';
import '../../../../core/utils/widgets/custom_button.dart';

class BottomInfoCard extends StatelessWidget {
  const BottomInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Container(
          width: context.width,
          height: context.height * 0.25,
          decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Column(children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    top: 25.h, left: 42.w, right: 42.w, bottom: 10.h),
                child: TextResponsiveWidget(
                  child: Text(
                    'Look Good, Feel Good',
                    style: AppTextStyles.semiBold25
                        .copyWith(color: AppColors.kBlackColor),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 20.h),
                child: Text(
                  'Create your individual & unique style and look amazing everyday.',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.regular15
                      .copyWith(color: AppColors.kSecondaryColor),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
                child: CustomButton(
                  onTap: () {
                    Navigator.pushNamed(context, RouteNames.welcomeView);
                },
                text: 'Get Started',
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
