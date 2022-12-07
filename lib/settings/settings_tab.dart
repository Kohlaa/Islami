import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/providers/AppConfigProvider.dart';
import 'package:islami_app/settings/language_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SettingsTap extends StatefulWidget {
  @override
  State<SettingsTap> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsTap> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(18),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,
              style: Theme
                  .of(context)
                  .textTheme
                  .subtitle1),
          SizedBox(
            height: 18,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Theme
                    .of(context)
                    .primaryColor),
            padding: EdgeInsets.all(15),
            child: InkWell(
              onTap: () {
                showLanguageBottomSheet();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      provider.appLanguage == "en" ?
                      AppLocalizations.of(context)!.english :
                      AppLocalizations.of(context)!.arabic
                      ,
                      style: Theme
                          .of(context)
                          .textTheme
                          .subtitle1),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageBottomSheet();
        });
  }
}
