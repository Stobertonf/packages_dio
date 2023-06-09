import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:packages_dio/pages/splash_screen/splash_screen_delay_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: const SplashScreenDelayPage(),
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
    );
  }
}
