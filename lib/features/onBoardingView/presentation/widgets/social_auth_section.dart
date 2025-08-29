import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/di/di.dart';
import 'package:laza/core/utils/widgets/custom_toast.dart';
import 'package:laza/core/utils/widgets/loading_widget.dart';
import 'package:laza/features/auth/presentation/viewModels/auth_cubit.dart';
import 'package:laza/features/onBoardingView/presentation/widgets/social_auth_button.dart';

import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/app_text_styles.dart';
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
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            switch (state) {
              case SignInWithGoogleSuccess():
                CustomToast.showSuccessToast(message: 'Success');
                break;
              case SignInWithGoogleFailure():
                CustomToast.showSuccessToast(message: state.failureMessage);
                break;
              default:
                null;
            }
          },
          builder: (context, state) => Column(
            spacing: 10.h,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialAuthButton(
                widget: Text(
                  S.of(context).facebook,
                  style: AppTextStyles.medium17
                      .copyWith(color: AppColors.kWhiteColor),
                ),
                logo: Assets.imagesFacebook,
                clr: AppColors.kBlueColor,
              ),
              SocialAuthButton(
                widget: Text(
                  S.of(context).twitter,
                  style: AppTextStyles.medium17
                      .copyWith(color: AppColors.kWhiteColor),
                ),
                logo: Assets.imagesTwitter,
                clr: AppColors.kTwitterBlue,
              ),
              SocialAuthButton(
                onTap: () => _viewModel.doAction(
                  SignInWithGoogle(),
                ),
                widget: state is SignInWithGoogleLoading
                    ? const LoadingWidget()
                    : Text(
                        S.of(context).google,
                        style: AppTextStyles.medium17
                            .copyWith(color: AppColors.kWhiteColor),
                      ),
                logo: Assets.imagesGoogle,
                clr: AppColors.kRedColor,
              ),
            ],
          ),
        ));
  }
}
