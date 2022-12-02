import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/quran/sura_name_details.dart';

class SuraNameDetails extends StatelessWidget {
  static const String routeName = 'sura-details';

  @override
  Widget build(BuildContext context) {
    var args= ModalRoute.of(context)?.settings.arguments as SuraNameDetailsArgs;
    return Stack(children: [
      Image.asset(
        "assets/images/main_background.png",
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          // elevation: 0,
          title: Text(
            "${args.name}",
            style: Theme.of(context).textTheme.headline1,
          ),
          centerTitle: true,
        ),
      ),
    ]);
  }
}
class SuraNameDetailsArgs{
  String name;
  int idx;
  SuraNameDetailsArgs({required this.name,required this.idx});
}