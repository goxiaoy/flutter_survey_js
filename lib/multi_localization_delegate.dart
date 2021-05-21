import 'package:flutter/cupertino.dart';
import 'package:multiple_localization/multiple_localization.dart';

import 'generated/intl/messages_all.dart';
import 'generated/l10n.dart';

class MultiAppLocalizationsDelegate extends AppLocalizationDelegate {
  const MultiAppLocalizationsDelegate();

  static const AppLocalizationDelegate delegate =
      MultiAppLocalizationsDelegate();

  @override
  Future<S> load(Locale locale) {
    return MultipleLocalizations.load(
        initializeMessages, locale, (l) => S.load(locale),
        setDefaultLocale: true);
  }
}
