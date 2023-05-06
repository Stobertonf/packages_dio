import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:packages_dio/splash_screen/splash_screen_delay_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: const SplashScreenDelayPage(),
    );
  }
}
