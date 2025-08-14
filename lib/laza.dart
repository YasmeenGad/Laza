import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza/core/config/media_query_config.dart';

import 'core/routes/app_routes.dart';
import 'core/routes/route_names.dart';
import 'core/styles/app_colors.dart';
import 'generated/l10n.dart';

class Laza extends StatelessWidget {
  const Laza({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:
            kIsWeb ? Size(context.width, context.height) : const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
            locale: Locale('ar'),
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            builder: (context, child) {
              return Scaffold(
                backgroundColor: AppColors.kWhiteColor,
                body: child,
              );
            },
            initialRoute: RouteNames.onBoardingView,
            routes: AppRoutes.getRoutes()));
  }
}
