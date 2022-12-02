import 'package:flutter/material.dart';
import 'package:islami_app/home/hadeth.dart';
import 'package:islami_app/home/radio_tab.dart';
import 'package:islami_app/home/tasbeh_tab.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/quran/quran_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home-screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedidx = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
              "Islami",
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(canvasColor: MyTheme.goldPrimary),
            child: BottomNavigationBar(
              currentIndex: selectedidx,
              onTap: (index) {
                setState(() {
                  selectedidx = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_quran.png'),
                    ),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_hadeth.png'),
                    ),
                    label: 'Hadeeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_sebha.png'),
                    ),
                    label: 'Tasbeh'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_radio.png'),
                    ),
                    label: 'Radio')
              ],
            ),
          ),
          body: tabs[selectedidx],
        ),
      ],
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), TasbehTab(), RadioTab()];
}
