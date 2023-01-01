import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:new_flutter_template/src/app.dart';
import 'package:new_flutter_template/src/constants/constant_colors.dart';
import '../../localization/language/language.dart';
import '../../localization/language/language_constants.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({
    super.key,
  });

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.navColor,
        title: Text(translation(context).settings),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              translation(context).changeLang,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              width: 10,
            ),
            DropdownButton<Language>(
              underline: const SizedBox(),
              hint: Text(translation(context).language),
              onChanged: (Language? language) async {
                if (language != null) {
                  Locale _locale = await setLocale(language.languageCode);
                  // ignore: use_build_context_synchronously
                  MyApp.setLocale(context, _locale);
                }
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                      value: e,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[Text(e.name)],
                      ),
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
