import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/di/di.dart';
import 'package:laza/features/auth/presentation/viewModels/auth_cubit.dart';
import 'package:laza/features/onBoardingView/presentation/widgets/social_auth_button.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../../../auth/presentation/viewModels/auth_action.dart';

class SocialAuthSection extends StatefulWidget {
  const SocialAuthSection({super.key});

  @override
  State<SocialAuthSection> createState() => _SocialAuthSectionState();
}

class _SocialAuthSectionState extends State<SocialAuthSection> {
  late final AuthCubit _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = getIt.get<AuthCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => _viewModel,
        child: BlocListener(
          listener: (context, state) {},
          child: Column(
            spacing: 10.h,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialAuthButton(
                text: S.of(context).facebook,
                logo: Assets.imagesFacebook,
                clr: AppColors.kBlueColor,
              ),
              SocialAuthButton(
                text: S.of(context).twitter,
                logo: Assets.imagesTwitter,
                clr: AppColors.kTwitterBlue,
              ),
              SocialAuthButton(
                onTap: () => _viewModel.doAction(
                  SignInWithGoogle(),
                ),
                text: S.of(context).google,
                logo: Assets.imagesGoogle,
                clr: AppColors.kRedColor,
              ),
            ],
          ),
        ));
  }
}
