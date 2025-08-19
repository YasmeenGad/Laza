import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/di/di.dart';
import 'core/localization/locale_provider.dart';
import 'firebase_options.dart';
import 'laza.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await configureDependencies();
  runApp(
    ChangeNotifierProvider(
      create: (_) => getIt<LocaleProvider>()..loadSavedLocale(),
      child: const Laza(),
    ),
  );
}
