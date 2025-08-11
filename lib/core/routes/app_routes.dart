import 'package:flutter/material.dart';
import 'package:laza/core/routes/route_names.dart';

import '../../features/onBoardingView/presentation/views/onBoarding_view.dart';
import '../../features/onBoardingView/presentation/views/welcome_view.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      RouteNames.onBoardingView: (context) => OnBoardingView(),
      RouteNames.welcomeView: (context) => const WelcomeView(),
    };
  }
}
