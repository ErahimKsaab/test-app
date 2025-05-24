import 'package:flutter/material.dart';
import 'package:itravelsai_app/models/Localization.dart';





class AppConstants {
  static const String APP_NAME = 'ITRAVELSA';
  static List<LanguageModel> languages = [
    LanguageModel(countryCode: 'US', languageCode: 'en'),
    LanguageModel(countryCode: 'SA', languageCode: 'ar'),
  ];

}
