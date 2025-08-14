import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';

class AuthFooterPrompt extends StatelessWidget {
  const AuthFooterPrompt(
      {super.key,
      required this.mainText,
      required this.actionText,
      this.onTap});

  final String mainText, actionText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: mainText,
          style: AppTextStyles.regular15
              .copyWith(color: AppColors.kSecondaryColor)),
      TextSpan(
        text: actionText,
        style: AppTextStyles.medium15.copyWith(color: AppColors.kBlackColor),
        recognizer: TapGestureRecognizer()..onTap = onTap,
      ),
    ]));
  }
}
