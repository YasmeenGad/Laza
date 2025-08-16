import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:laza/core/routes/route_names.dart';

import '../../features/onBoardingView/presentation/views/onBoarding_view.dart';
import '../../features/onBoardingView/presentation/views/welcome_view.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.onBoardingView:
        return _sharedAxisTransition(
            page: const OnBoardingView(),
            settings: settings,
            transitionType: SharedAxisTransitionType.vertical);
      case RouteNames.welcomeView:
        return _sharedAxisTransition(
            page: const WelcomeView(),
            settings: settings,
            transitionType: SharedAxisTransitionType.vertical);
      default:
        return MaterialPageRoute(
            builder: (context) => Center(
                  child: Text('No Route Found'),
                ));
    }
  }

  static PageRouteBuilder _sharedAxisTransition(
      {required Widget page,
      required RouteSettings settings,
      required SharedAxisTransitionType transitionType}) {
    return PageRouteBuilder(
        settings: settings,
        transitionDuration: const Duration(milliseconds: 500),
        reverseTransitionDuration: const Duration(milliseconds: 500),
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            SharedAxisTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: transitionType,
              child: child,
            ));
  }
}
