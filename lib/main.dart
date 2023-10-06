import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const <Locale>[
        Locale('es'),
        Locale('en'),
      ],
      path: 'translations',
      fallbackLocale: const Locale('es'),
      child: const MyApp(),
    ),
  );
}
