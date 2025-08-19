import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/config/media_query_config.dart';

import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';
import '../widgets/auth_base_body.dart';
import '../widgets/auth_base_header.dart';

class AuthBaseLayout extends StatelessWidget {
  const AuthBaseLayout(
      {super.key,
      required this.title,
      required this.buttonText,
      required this.body,
      this.footerPrompt,
      this.showLanguageIcon = false});

  final String title, buttonText;
  final Widget body;
  final Widget? footerPrompt;
  final bool? showLanguageIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AuthBaseHeader(
          title: title,
          showLanguageIcon: showLanguageIcon,
        ),
        AuthBaseBody(
          body: body,
        ),
        Column(
          spacing: 25.h,
          children: [
            if (footerPrompt != null) footerPrompt!,
            Container(
              width: context.width,
              height: 75.h,
              decoration: const BoxDecoration(
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
