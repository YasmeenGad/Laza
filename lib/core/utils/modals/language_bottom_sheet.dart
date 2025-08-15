import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/generated/l10n.dart';
import 'package:provider/provider.dart';

import '../../localization/locale_provider.dart';
import '../../styles/app_colors.dart';
import '../../styles/app_text_styles.dart';

class LanguageBottomSheet extends StatelessWidget {
  final VoidCallback onEnglishSelected;
  final VoidCallback onArabicSelected;

  const LanguageBottomSheet({
    super.key,
    required this.onEnglishSelected,
    required this.onArabicSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kWhiteColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.r)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            S.of(context).chooseLanguage,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.language, color: AppColors.kBlueColor),
            title: Text('English',
                style: AppTextStyles.medium17
                    .copyWith(color: AppColors.kBlackColor)),
            onTap: onEnglishSelected,
          ),
          ListTile(
            leading: Icon(Icons.language, color: AppColors.kGreenColor),
            title: Text(
              'العربية',
              style:
                  AppTextStyles.medium17.copyWith(color: AppColors.kBlackColor),
            ),
            onTap: onArabicSelected,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

void showLanguageSelector(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (_) => LanguageBottomSheet(
      onEnglishSelected: () {
        context.read<LocaleProvider>().setLocale(Locale('en'));
        Navigator.pop(context);
      },
      onArabicSelected: () {
        context.read<LocaleProvider>().setLocale(Locale('ar'));
        Navigator.pop(context);
      },
    ),
  );
}
