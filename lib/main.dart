import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:itravelsai_app/util/Localization.dart';
import 'package:itravelsai_app/util/app_colors.dart';
import 'package:itravelsai_app/util/app_constants.dart';
import 'package:itravelsai_app/util/styles.dart';
import 'package:itravelsai_app/view/Screans/WelcomeScrean/WelcomeScrean.dart';
import 'package:itravelsai_app/viewmodels/LanguageViewmodel.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: whitecolor,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color:whitecolor),
        ),
      ),
      title: 'Itravelsai',
   locale: Lang=='En'?Locale(
      AppConstants.languages[0].languageCode,
      AppConstants.languages[0].countryCode,
    ):Locale(
    AppConstants.languages[1].languageCode,
    AppConstants.languages[1].countryCode,
    ),
    supportedLocales: [
    Locale(
    AppConstants.languages[0].languageCode,
    AppConstants.languages[0].countryCode,
    ),
    Locale(
    AppConstants.languages[1].languageCode,
    AppConstants.languages[1].countryCode,
    ),
    ],
    localizationsDelegates: const [
    AppLocale.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    ],
      home:    const TravelHomePage( ),
    );
  }
}

