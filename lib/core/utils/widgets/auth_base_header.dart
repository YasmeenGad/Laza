import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../modals/language_bottom_sheet.dart';

class AuthBaseHeader extends StatelessWidget {
  const AuthBaseHeader({super.key, required this.title, this.showLanguageIcon});

  final String title;
  final bool? showLanguageIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 45.h, left: 20.w, right: 20.w),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45.h,
                  width: 45.w,
                  decoration: const BoxDecoration(
                    color: AppColors.kLightGreyColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.arrow_back),
                ),
                if (showLanguageIcon == true)
                  IconButton(
                    icon: const Icon(Icons.language),
                    onPressed: () {
                      showLanguageSelector(context);
                    },
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            title,
            style:
                AppTextStyles.semiBold28.copyWith(color: AppColors.kBlackColor),
          ),
        ],
      ),
    );
  }
}
