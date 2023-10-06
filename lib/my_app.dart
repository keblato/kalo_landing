import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'ui/screens/screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Kalo',
        theme: ThemeData(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        // TODO(Kevin): change to use the same language of browser
        //   locale: context.locale,
        locale: context.locale,
        home: const LandingScreen(),
      );
}
