import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/config/media_query_config.dart';

import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';

class AuthBaseLayout extends StatelessWidget {
  const AuthBaseLayout(
      {super.key,
      required this.title,
      required this.buttonText,
      required this.body});

  final String title, buttonText;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 45.h, left: 20.w),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 45.h,
                  width: 45.w,
                  decoration: BoxDecoration(
                      color: AppColors.kLightGreyColor, shape: BoxShape.circle),
                  child: Icon(Icons.arrow_back),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                title,
                style: AppTextStyles.semiBold28
                    .copyWith(color: AppColors.kBlackColor),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Center(
              child: body,
            ),
          ),
        ),
        Column(
          spacing: 25.h,
          children: [
            RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Already have an account?',
                      style: AppTextStyles.regular15
                          .copyWith(color: AppColors.kSecondaryColor)),
                  TextSpan(
                      text: 'Signin',
                      style: AppTextStyles.medium15
                          .copyWith(color: AppColors.kBlackColor)),
                ])),
            Container(
              width: context.width,
              height: 75.h,
              decoration: BoxDecoration(
                color: AppColors.kPrimaryColor,
              ),
              child: Center(
                  child: Text(
                    buttonText,
                    style: AppTextStyles.medium17
                        .copyWith(color: AppColors.kAlmostWhite),
                  )),
            ),
          ],
        )
      ],
    );
  }
}
