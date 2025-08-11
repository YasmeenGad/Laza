import 'package:flutter/material.dart';
import 'package:laza/core/config/media_query_config.dart';
import 'package:laza/features/onBoardingView/presentation/widgets/bottom_info_card.dart';
import 'package:laza/generated/assets.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(Assets.imagesOnBoarding,
          width: context.width, height: context.height, fit: BoxFit.cover),
      Image.asset(Assets.imagesManLogo),
      const BottomInfoCard()
    ]);
  }
}
