import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => AppLocalizations.of(context)!.title,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        primaryTextTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Color(0xF0FFFFFF),
            fontWeight: FontWeight.w600,
          ),
        ),
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            color: Color(0xFF000000),
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
          ),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
