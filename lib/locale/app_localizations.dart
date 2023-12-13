 
import 'package:booking_system_flutter/locale/language_en.dart';
import 'package:booking_system_flutter/locale/language_es.dart'; 
import 'package:booking_system_flutter/locale/languages.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
 

class AppLocalizations extends LocalizationsDelegate<BaseLanguage> {
  const AppLocalizations();

  @override
  Future<BaseLanguage> load(Locale locale) async {
    switch (locale.languageCode) {
      case 'en':
        return LanguageEn(); 
        case 'es':
       return LanguageEs(); 

      default:
        return LanguageEs();
    }
  }

  @override
  bool isSupported(Locale locale) => LanguageDataModel.languages().contains(locale.languageCode);

  @override
  bool shouldReload(LocalizationsDelegate<BaseLanguage> old) => false;
}
