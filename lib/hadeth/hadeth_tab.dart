import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth/item_hadeth_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethItem> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) loadHadethFile();
    return Container(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 1, child: Image.asset('assets/images/hadeth_image.png')),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 4,
          ),
          Text(AppLocalizations.of(context)!.hadethName, style: Theme.of(context).textTheme.subtitle1),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 4,
          ),
          Expanded(
            flex: 3,
            child: allHadeth.length == 0
                ? Center(
                    child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) {
                      return ItemHadethName(hadethItem:allHadeth[index]);
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Theme.of(context).primaryColor,
                        thickness: 2,
                      );
                    },
                    itemCount: allHadeth.length,
                  ),
          )
        ],
      ),
    );
  }

  void loadHadethFile() async {
    String allAhadeth = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadethContent = allAhadeth.split('#\r\n');
    for (int i = 0; i < allHadethContent.length; i++) {
      List<String> hadethContent = allHadethContent[i].split('\n');
      String title = hadethContent[0];
      hadethContent.removeAt(0);
      HadethItem hadethItem = HadethItem(title: title, content: hadethContent);
      allHadeth.add(hadethItem);
    }
    setState(() {});
  }
}

class HadethItem {
  String title;
  List<String> content;

  HadethItem({required this.title, required this.content});
}
