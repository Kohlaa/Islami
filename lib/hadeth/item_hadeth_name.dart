import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/hadeth/hadeth_details_screen.dart';
import 'package:islami_app/quran/sura_name_details.dart';

import 'hadeth_tab.dart';

class ItemHadethName extends StatelessWidget {
  HadethItem hadethItem;

  ItemHadethName({required this.hadethItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamed(HadethDetailsScreen.routeName, arguments: hadethItem);
        },
        child: Text(
          hadethItem.title,
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
