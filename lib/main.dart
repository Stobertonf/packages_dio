import 'package:flutter/material.dart';
import 'package:packages_dio/home_page.dart';
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      fallbackLocale: const Locale('pt', 'BR'),
      supportedLocales: const [Locale('en', 'US'), Locale('pt', 'BR')],
      child: const HomePage(),
    ),
  );
}
