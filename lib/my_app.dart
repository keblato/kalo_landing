import 'package:flutter/material.dart';
import 'ui/screens/screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Kalo',
        theme: ThemeData(),
        home: const LandingScreen(),
      );
}
