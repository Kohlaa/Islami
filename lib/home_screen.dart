import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home-screen";

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
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            title: Text(
              "Islami",
              style: Theme.of(context).textTheme.headline2,
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
