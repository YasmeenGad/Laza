import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:text_responsive/text_responsive.dart';

import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
            color: AppColors.kPrimaryColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Center(
              child: TextResponsiveWidget(
                child: Text(
                  text,
                  style: AppTextStyles.medium17
                      .copyWith(color: AppColors.kWhiteColor),
                ),
              ),
            ),
          )),
    );
  }
}
