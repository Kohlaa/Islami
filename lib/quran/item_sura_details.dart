import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemSuraDetailsScreen extends StatelessWidget {
  String name;
  int ayaidx;

  ItemSuraDetailsScreen({required this.name, required this.ayaidx});

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Text(
        '$name (${ayaidx + 1})',
        style: Theme.of(context).textTheme.subtitle1,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
