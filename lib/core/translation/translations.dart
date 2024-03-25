import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Translations {
  Translations.of(BuildContext buildContext) {
    appLocalizations = AppLocalizations.of(buildContext);
  }

  late final AppLocalizations? appLocalizations;

  String getTranslation(String sid) {
    switch (sid) {
      case 'hello':
        return appLocalizations?.hello ?? '';
      default:
        return '';
    }
  }
}
