import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/quran/sura_name_details.dart';

class ItemSuraName extends StatelessWidget {
  String name;
  int index;

  ItemSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(SuraNameDetails.routeName,
              arguments: SuraNameDetailsArgs(name: name, idx: index));
        },
        child: Text(
          name,
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
